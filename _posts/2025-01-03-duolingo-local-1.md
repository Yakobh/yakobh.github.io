---
layout: post
title: Duolingo Local (unofficial) pt 2
date: 2025-01-03 23:30 -0500
categories: [side-projects]
tags: [language-learning]
---

![svenska-akademiens-ordböcker](/assets/img/duolingo_post/svenska_akademiens_ordbocker.png ){: .center width="300" }

Hej på er och varmt välkommen! Great to see you again. Today I wanted to talk about some additional
resources that my Swedish teacher pointed me towards for building out my *ordlista*. The website
[svenska.se](https://svenska.se/) has some fantastic resources related to pulling out the
*ordformer* for different word types. I have been primarily focused on using the SAOL *ordlista*
from the website to collect forms such as *Imperativ, Infinitiv, Presens, Preteritum, and Supinum*
for verbs to know how to conjugate. I have also been reading different articles on [8sidor](https://8sidor.se/)
and gaining better knowledge of the Swedish language. While I have been reading and understanding
more and more, I take the opportunity to add new words to my list from 8sidor articles and looking
up their different forms to apply to my studying.

It has been a really exciting journey so far and I have been having fun finding my own resources
like the podcast [lätt svenska med Oskar](https://www.lattsvenskamedoskar.com/) and different
programs on SVT Play. If you happen to be learning Swedish as well, I *HIGHLY* recommend Oskar's
podcast (and I just bought his book which seems like a great resource as well). His podcast has felt
like a talking to a friend who is heavily invested in helping you learn a new language and kultur.

So, why am I making a post about this? Firstly, I wanted to share more of my newfound passion for
learning Swedish and continuing to immerse in the Swedish culture. I also wanted to share a couple
of mechanisms of how I automated building out my *ordlista* with the amazing assistance of Duolingo
and svenska akademiens ordböcker. So let's jump on into it.

When taking a look at the interfaces and API calls on *svenska.se*, I noticed that it was making
different calls out to the following URLs:

```
https://svenska.se/tri/f_saol.php?sok={word}
https://svenska.se/tri/f_saol.php{prefix}&ret={word}
```

It was also making calls out to the other dictionary types such as `/f_so` and `/f_saob`. Since I am
focused only on the SAOL dictionary, I am only using those URLs to parse in this blog post and in my
studying. The two different URLs are important as sometimes there are multiple forms of the word i.e
a word could be used as a verb and and adjective. The second URL is to lookup the specific form by
code in the response from the first URL. Here is an example response from the first search URL.

```
<div class="cshow">
    <div class="saol">
        <div class="spaltnr">
            <span class="tryck">publicerad: 2015 &nbsp;</span>
        </div>
        <div class="article">
            <span class="kt">äta</span>
            <div class="lemma" id="lnr113064">
                <span class="grundform">äta</span>
                <a class="ordklass">verb</a>
                <span class="bojning">
                    åt, ätit, äten ätet ätna, <span class="pt">pres. </span>
                    äter 
                </span>
                <span class="lexem"></span>
                <span class="expansion" onclick="jQuery(this).toggleClass('collapsed')"></span>
                <table class="tabell" id="bojning113064">
                    <tr>
                        <th class="ordformth" colspan="2">
                            <i>Finita former</i>
                        </th>
                    </tr>
                    <tr>
                        <td class="ordform">
                            <b>
                                <span class="bform">äter</span>
                            </b>
                        </td>
                        <td class="ledtext">presens aktiv</td>
                    </tr>
...
```

Sooooo, not my most preferred data to work with for automation. The Duolingo JSON data was *much* easier
to parse. But sometimes, we do what we must in the name of science. Since I wanted to
have the different conjugations for all of the words in my list from Duolingo, I did *not* want to
manually copy paste them into the website and drop them into a spreadsheet for 1700 words (though
that would have probably been a good study activity `¯\_(ツ)_/¯`). Since I am a programmer with
reverse engineering experience, I figured I can do it in a more fun way of automation. So let's
check out what we can do with pulling out these wordforms via *BeautifulSoup*.

Firstly, we need to pass along a list of words that we would like to lookup and output from
svenska.se. This could be done in a much more robust manner with `argparse`, but since I am just
writing up a small script for myself, this method will more than suffice until it potentially
becomes a large program.

```python
import sys
# assess the cli args
print(sys.argv)
if len(sys.argv) != 2:
    print(f"USAGE: {' '.join(sys.argv[:1])} <wordlist.txt>")
    exit(1)

word_list = open(sys.argv[1], "r").readlines()
```

Then we need to lookup each of the words from the website using the different links we discovered
from observing the network requests on the website. If the word had multiple forms, I noticed the
additional links specifically had the class attribute `slank debug_common_340` which I used as a
marker to traverse links and get the full data from the website automatically. The other important
thing to note is that the website returned a 403 if no header value was provided which I discovered
through trial and error after adding the `User-Agent` string in after getting 403's moving from cURL
to python `requests`.

```python
import requests

search_url = "https://svenska.se/tri/f_saol.php?sok={word}"
request_url = "https://svenska.se/tri/f_saol.php{prefix}&ret={word}"

# we have to provide a header because svenska.se will return a 403 otherwise
headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'
}

# iterate through all the words in the word bank
for word in tqdm(word_list):
    search = requests.get(search_url.format(word=word), headers=headers)
    searchParser = BeautifulSoup(search.content, 'html.parser')

    # find all of the links in the search with the keyword class 'slank debug_common_340'
    links = [
        link['href'].split('/')[-1]
        for link in 
        searchParser.find_all(
            'a',
            href=True,
            class_="slank debug_common_340"
        )
    ]
    if links:
        # if we had links, we need to parse each of the word forms for each link
        for link in links:
            res = requests.get(request_url.format(prefix=link, word=word), headers=headers)
            resParser = BeautifulSoup(res.content, 'html.parser')
            ord_data = parse_html_ord_response(resParser)
            infinitiv = list(ord_data.keys())[0]
            ordlista.update(ord_data)
    else:
        # if there weren't any links in the response it means we only had the one form of the word
        ord_data = parse_html_ord_response(searchParser)
        infinitiv = list(ord_data.keys())[0]
        ordlista.update(ord_data)
```

Let's take a further look into the `parse_html_ord_response` function that is responsible for
actually extracting data from the parsed HTML. I noticed a few patterns and specific HTML elements
that were particularly useful without needing to traverse the whole DOM tree. Particularly, the HTML
objects that were of class `kt` were the infinitiv form of the word. All other forms of the word
*ordklasser* had the class of `ordklass`. Simply parsing those specific elements allowed me to
extract the different word forms from the returned HTML structure. Since we are working with non
standard ascii characters with ä, ö, and å, there were some weird responses coming back and trying
to output to JSON strings was tricky. As I mention in the comments, there's most definitely a better
way to handle that encoding, but I just wanted something that works well enough for my purposes now
without over-engineering it.

```python
def remove_hex_codes(text: str):
    # this is a bit of a hack when sometimes the response has additional hex codes that cannot be
    # rendered well. There's probably a better way to do this, but this worked well *enough*
    return text.replace('\xa0', ' ')

def parse_html_ord_response(parser):
    """Parse the response from svenska.se to extract the different word forms"""
    # get the ordklasser from the response
    klass_karta = {}

    # capture the infinitive from the class called kt, there should only be one
    infinitiv = parser.find_all(class_="kt")
    if not infinitiv:
        print(parser)
        infinitiv = "unknown"
    else:
        infinitiv = infinitiv[0].text
    ordklasser = parser.find_all(class_="ordklass")
    for klass in ordklasser:
        klass_namn = klass.text
        klass_karta[klass_namn] = []
        # all of the word breakdowns are in the 'table' element in the siblings
        # there should only be one table in the siblings here
        table = klass.find_next_siblings("table")[0]
        ordformer = table.find_all(class_='ordform')
        for ordform in ordformer:
            ordform_text = remove_hex_codes(ordform.text)
            # append the word form along with the word for context if exists
            sibling = ordform.next_sibling
            if sibling:
                ordform_text += f": {sibling.text}"
            klass_karta[klass_namn].append(ordform_text)
    return {infinitiv: klass_karta}
```

**Full Python Program**
```python
from bs4 import BeautifulSoup
import json
from pathlib import Path
import re
import requests
import sys
from tqdm import tqdm


# assess the cli args
if len(sys.argv) != 2:
    print(f"USAGE: {' '.join(sys.argv[:1])} <wordlist.txt>")
    exit(1)

word_list = open(sys.argv[1], "r").readlines()


def remove_hex_codes(text: str):
    # this is a bit of a hack when sometimes the response has additional hex codes that cannot be
    # rendered well. There's probably a better way to do this, but this worked well *enough*
    return text.replace('\xa0', ' ')

def parse_html_ord_response(parser):
    """Parse the response from svenska.se to extract the different word forms"""
    # get the ordklasser from the response
    klass_karta = {}
    # capture the infinitive from the class called kt, there should only be one
    infinitiv = parser.find_all(class_="kt")
    if not infinitiv:
        print(parser)
        infinitiv = "unknown"
    else:
        infinitiv = infinitiv[0].text
    ordklasser = parser.find_all(class_="ordklass")
    for klass in ordklasser:
        klass_namn = klass.text
        klass_karta[klass_namn] = []
        # all of the word breakdowns are in the 'table' element in the siblings
        # there should only be one table in the siblings here
        table = klass.find_next_siblings("table")[0]
        ordformer = table.find_all(class_='ordform')
        for ordform in ordformer:
            ordform_text = remove_hex_codes(ordform.text)
            # append the word form along with the word for context if exists
            sibling = ordform.next_sibling
            if sibling:
                ordform_text += f": {sibling.text}"
            klass_karta[klass_namn].append(ordform_text)
    return {infinitiv: klass_karta}

# for the different dictionaries, there are saol, so, och saob
search_url = "https://svenska.se/tri/f_saol.php?sok={word}"
request_url = "https://svenska.se/tri/f_saol.php{prefix}&ret={word}"

# we have to provide a header because svenska.se will return a 403 otherwise
headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'
}

ordlista = {}

# iterate through all the words in the word bank
for word in tqdm(word_list):
    search = requests.get(search_url.format(word=word), headers=headers)
    searchParser = BeautifulSoup(search.content, 'html.parser')

    # find all of the links in the search with the keyword class 'slank debug_common_340'
    links = [
        link['href'].split('/')[-1]
        for link in 
        searchParser.find_all(
            'a',
            href=True,
            class_="slank debug_common_340"
        )
    ]
    if links:
        # if we had links, we need to parse each of the word forms for each link
        for link in links:
            res = requests.get(request_url.format(prefix=link, word=word), headers=headers)
            resParser = BeautifulSoup(res.content, 'html.parser')
            ord_data = parse_html_ord_response(resParser)
            infinitiv = list(ord_data.keys())[0]
            ordlista.update(ord_data)
    else:
        # if there weren't any links in the response it means we only had the one form of the word
        ord_data = parse_html_ord_response(searchParser)
        infinitiv = list(ord_data.keys())[0]
        ordlista.update(ord_data)

final_list = {
    "ordlista": ordlista
}

with open("enriched_words.json", "w") as f:
    json.dump(final_list, f)


```

So this gives me back a dictionary of the parsed word forms that were successfully looked up on the
svenska.se site. Here is an example of some of the data it returned:

```json
{
  "ordlista": {
    "beteende": {
      "substantiv": [
        "ett beteende: obestämd form",
        "ett beteendes: obestämd form genitiv",
        "beteendet: bestämd form",
        "beteendets: bestämd form genitiv",
        "beteenden: obestämd form",
        "beteendens: obestämd form genitiv",
        "beteendena: bestämd form",
        "beteendenas: bestämd form genitiv"
      ]
    },
    "styrka": {
      "substantiv": [
        "en styrka: obestämd form",
        "en styrkas: obestämd form genitiv",
        "styrkan: bestämd form",
        "styrkans: bestämd form genitiv",
        "styrkor: obestämd form",
        "styrkors: obestämd form genitiv",
        "styrkorna: bestämd form",
        "styrkornas: bestämd form genitiv"
      ],
      "verb": [
        "styrker: presens aktiv",
        "styrks (styrkes): presens passiv",
        "styrkte: preteritum aktiv",
        "styrktes: preteritum passiv",
        "styrk: imperativ aktiv",
        "att styrka: infinitiv aktiv",
        "att styrkas: infinitiv passiv",
        "har/hade styrkt: supinum aktiv",
        "har/hade styrkts: supinum passiv",
        "styrkande",
        "en styrkt + substantiv",
        "ett styrkt + substantiv",
        "den/det/de styrkta + substantiv",
        "den styrkte + maskulint substantiv"
      ]
    },
...
```

Now we're not completely out of the woods yet. I want to be able to take these words and print them
out so I can easily copy and paste them into my spreadsheet via tab separated value format. Let's
checkout a super rudimentary system to print out the verb form (the most important data from
svenska.se). I enhanced the data that came back from svenska.se with the translation data from
Duolingo to get a simplified table output that contained the english alongside all of the word
forms.

```python
for name, data in verb_data.items():
    imperativ = ""
    infinitiv = ""
    present = ""
    past = ""
    supine = ""
    for form in data["verb"]:
        base_form = form.split(":")[0]
        if form.endswith(": imperativ aktiv") or form.endswith(": imperativ deponens"):
            imperativ = base_form
        elif form.endswith(": infinitiv aktiv") or form.endswith(": infinitiv deponens"):
            infinitiv = base_form
        elif form.endswith(": presens aktiv") or form.endswith(": presens deponens"):
            present = base_form
        elif form.endswith(": preteritum aktiv") or form.endswith(": preteritum deponens"):
            past = base_form
        elif form.endswith(": supinum aktiv") or form.endswith(": supinum deponens"):
            supine = base_form

    engelska = data["translations"][0]
    print("to " + engelska + "\t" + imperativ + "\t" + infinitiv + "\t" +
          present + "\t" + past + "\t" + supine)
```

Now I am only caring about the imperative, infinitive, present, past, and supine forms of the verbs
so I can ignore the rest of the data that comes back from svenska.se. So I parse through the data
that was parsed via *BeautifulSoup* and output the different verb forms to the terminal so I can do
a good 'ol copy-pasta over and there you go! This saved me a TON of time and manual monotony from
copy pasting and typing word after word after word into a spreadsheet and allowed me to run the
program once and copy over once. Here's an example of that output:

```
ENGLISH IMPERATIV   INFINITIV   PRESENS PRETERITUM  SUPINUM
to accept	acceptera	att acceptera	accepterar	accepterade	har/hade accepterat
to analyze	analysera	att analysera	analyserar	analyserade	har/hade analyserat
to order	beställ	att beställa	beställer	beställde	har/hade beställt
to decide	bestäm	att bestämma	bestämmer	bestämde	har/hade bestämt
```

This system is not perfect, as is typical with automation. One big issue is that there are sometimes
word forms that are *technically* correct from the SAOL dictionary, but they aren't really what I'm
looking for. For example you have *flicka* (girl), but also shows up as a verb with the
definition *lappa skor* (patch shoes). I have a feeling the latter is an old version of the word or
at least not used often. Obviously, I was just looking for the *substantiv* (noun) form of the word,
but my list was saturated with an additional verb I wasn't intending. This is a reasonable cost to
pay for automating the bulk of my duolingo words and getting on the path of continuing my studies
and vocabulary.

Tusentack och vi ses igen snart!

~ Hej ~
