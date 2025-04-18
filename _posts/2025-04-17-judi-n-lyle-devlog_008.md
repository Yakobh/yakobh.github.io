---
layout: post
title: Judi-n-Lyle Devlog - 008
date: 2025-04-17 20:00 -0500
categories: [Judi-n-Lyle GameDev]
tags: [devlog, judi-n-lyle]
---

![judi-n-lyle-banner](/assets/img/judi-n-lyle/judi-n-lyle-banner-new.png){: .center width="500" }

Hej hej mina vänner! It's been a while. Lot's of crazy horrible things going on in the world right
now, especially in the US. While recovering from the doom-scrolling and depression the last month,
I've been trying to give myself a break and put my physical health first. Of course though, I also
had to get sick again (currently as of writing this). So while all of that has
been going on, I have been careful to use game dev as an escape into creative freedom and not as an
expectation of productivity. This mindset shift has made game dev overall more exciting and relaxing
for me. I can now sit down and just play. Play around with new components. Play around with new
layouts and new ideas. I no longer feel locked down or internal pressure to execute.

I feel free.

And that is something that I need right now. Trying to strike the balance between staying up on
current events, getting more active in my community, and taking care of myself has been difficult.
Especially as the doom-scroll phenomena has a succulent allure, it sometimes feels impossible to
escape it's grasp. But that is where Judi and Lyle has come in to save me, giving me that little
slice of creative outlet that I so desperately crave right now.

---

Onto some more exciting news - 

I will be attending Indie Game Fest in Baltimore on June 7th. You can find the link here: 
[https://calendar.prattlibrary.org/event/indie_game_fest_2025](https://calendar.prattlibrary.org/event/indie_game_fest_2025).
If you're around, come on by to the event and say hi! I'll have a demo of Judi and Lyle for people
to play at the event. It's been really exciting to sign up for an event like this for my first time.
I enjoy connecting with people, and this sort of event will be exciting to experience. I'm looking
forward to having new people play my game and see their reactions in real time. And hopefully there
will be some positive reactions to the demo. We shall see.

I also suddenly remembered the other day that I own a steam deck! I decided to investigate what it
would take to port Judi and Lyle onto Steam Deck and to my surprise it was no effort at all.

1. Put the steam deck into desktop mode
2. Connect my keyboard to my Steam Deck
3. Prepare a linux build of Judi and Lyle
4. Install python and `magic-wormhole` on my Steam Deck
5. Zip the linux build and wormhole it over to the Steam Deck
6. Unzip and add the linux build to my local Steam Deck library
7. Go back to game mode and play the game!

There was a few other guides that I tried to follow online, but since the Steam Deck is just a linux
box, I can do whatever I want! So that was a fun exploration into the Steam Deck and getting my
games built and transferred over so I could playtest them. How exciting!

![Judi and Lyle is depicted running on the steam deck. Judi is sitting amidst a vast forest.](/assets/img/judi-n-lyle/steam_deck_build.jpg){: .center width="800" }

I also went to a couple of my local dev meetup groups to work some more on exploring art direction
for Judi and Lyle. I explored a few different routes for parallax backgrounds in Godot and ended up
settling on an effective mechanism for adding some depth to the scene. I've mostly been focusing on
this time to setup how I want to design my levels to make it easier to iterate and create new levels
in the future. You can checkout some more of the art direction below fit with fog, moon rays, and
firefly particle effects.

![Judi depicted amidst a vast forest with a moon ray in the background](/assets/img/judi-n-lyle/judi-new-art-demo.jpg){: .center width="800" }
![Lyle sat across the water from Judi in a deep forest with platforms to jump on ](/assets/img/judi-n-lyle/lyle-and-judi-new-art.jpg){: .center width="800" }

I've been pleased with how things have been shaping up thusfar. The art work is coming together and
the post processing effects are unifying. I have also been able to identify some key design points
that are lacking after testing on Steam Deck. So I increased the text size and modified some API
calls I was using in Godot that were reacting a little weird on the Steam Deck. Grateful I have the
opportunity to test on that platform, and honestly it feels surreal to play my game on a mobile
console. That's something I never thought would happen. It all suddenly feels "official" and I am
happy, really happy.


Okejjjjj, det var allt for idag. Thanks for stopping by and we'll see you again soon! Hopefully less
than a month this time, but we'll have to see ;)

_- Jacob Hans_
