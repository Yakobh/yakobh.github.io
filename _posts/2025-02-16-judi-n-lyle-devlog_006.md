---
layout: post
title: Judi-n-Lyle Devlog - 006
date: 2025-02-16 13:00 -0500
categories: [Judi-n-Lyle GameDev]
tags: [devlog, judi-n-lyle]
---
![judi-n-lyle-banner](/assets/img/judi-n-lyle/judi-n-lyle-banner.png){: .center width="500" }

Hello! Welcome back. It's been a little while. I've been spending some time on some other facets of
my game dev journey the last few weeks including making a new short game for a small concept piece I
had an idea for:
[game.exe](https://yakobjorgensen.itch.io/gameexe) as well as doing some more branding and web
development for [djupskogstudios](https://djupskog.com). You can now go checkout the Djup Skog
website to see more information behind the studio and hear some fun voice acting skills from Judi
and Lyle. You can also go and follow the [Djup Skog Studios](https://www.instagram.com/djupskogstudios/)
instagram page to see more updates and BTS for Judi and Lyle!

It's also been a fun last few weeks of going to
local game dev events near me and meeting more like-minded people. BUT - I do have some fun updates
for progress on Judi and Lyle. So let's check it out.

---

The biggest update I have is that I have decided to make a local co-op mode for Judi and Lyle. My
wife was playtesting the game and as I sat there watching her, I realized that I just had to have a
mechanism so I could play along side her with each of us playing our dogs. So after that moment, I
decided to take this last weekend to play around with that concept and implement both split
screen and multiple local inputs for the first time. It was a great experience and I think
this concept will work very well for people to play with a friend, a family member, a loved one, or
some random person on the street.

You can check out a rough cut of the split screen concept in the video below. The overall idea is to
have a smooth camera transition between a shared camera when the dogs are close together, and then
have the screen shift to split screen when the characters get too far apart. Right now the transitions are
a little jarring, but the overall concept is there for you to see. In the video below, I also have a
controller connected up alonside keyboard controls which controls Judi and Lyle individually.

{%
  include embed/video.html
  src='/assets/img/judi-n-lyle/video_clips/splitscreen-concept.mp4'
  title='Split Screen Concept'
  autoplay=false
  loop=true
  muted=false
%}

I am however continuing to maintain the mechanism for players to play by themselves with the
swapping between characters mechanic. I think it's important for players to be able to have that
experience alone, and also be able to share it with friends. I am happy to be implementing the couch
co-op play because nothing is worse than having to sit
there and wait and watch while you just want to pick up the controller and play alongside someone.

I will be soon implementing an initial "character selector" screen where you can connect multiple
controllers or do a combo of keyboard and controller based on preference. This initial selector
screen will be akin to the classic "P1" or "P2" press start mechanic to select Judi or Lyle
initially if you choose "2 player" mode. This is not something I was originally planning for in the
design, but since I still don't have many levels designed yet, this is the perfect time to implement
the 2 player mechanic and design levels that work well for both 1 or 2 player mode. Maintaining the
balance between these two modes will be critical to make sure the experience is both different, and
effective. This may include adding different enemy balancing variables to make it harder for 2
player mode since you don't have to swap between characters.

Stay tuned for next post where I hopefully have some smoother camera transitions in the split screen
and more screens to select 2 player mode.

Till next time *det var allt för idag*,
 
  *- Jacob Hans*
