---
layout: post
title: Judi-n-Lyle Devlog - 007
date: 2025-03-09 13:00 -0500
categories: [Judi-n-Lyle GameDev]
tags: [devlog, judi-n-lyle, local-coop-mechanics]
---

![judi-n-lyle-banner](/assets/img/judi-n-lyle/judi-n-lyle-banner-new.png){: .center width="500" }

Heja och välkommen tillbaka! I started writing up this progress update about a week ago and
unfortunately came down with a pretty nasty respiratory illness. Haven't felt that bad in awhile and
forced me on the couch for almost a full week. Thankfully now I am starting to feel better, at least
enough to write up an update for where things are with Judi and Lyle.

Last week before I got down with the sickness, and being filled with the abundance of dread in the
world right now, I managed to join an event to meetup and connect some more with my local game dev
community. That is always a special treat and I truly appreciate seeing other projects that people
are working on and getting to share my special passion project as well. It gives me hope and
inspiration and honestly just more connections inside of what's going on in the area. New events I
had not heard of before, and new opportunities to sign up for to showcase my game. I signed up for
an event that I will hopefully be able to showcase Judi and Lyle at with a few hundred people
attending. That will be a great first opportunity to work hard and get a demo operational and get
some honest feedback from the community about my game, beyond just the game dev community. I am also
just excited to get to talk to people all day and meet new faces in the community at large.

So for Judi and Lyle, I had been previously focused on getting the local co-op couch play working.
I am pleased with the progress I managed to achieve there, and even more pleased with the initial
split screen affect smoothness. You can see a demo video of that effect below. I've had the
suggestion many times to implement the "diagonal splitscreen" effect where it's not strictly a
vertical split screen cut, but the angle is based on where the dogs are in relation to each other to
give it more information other than strictly "left" or "right". I think for now, I am going to leave
it as is and see how the game progresses, but that may be something I end up working on in the
future.

I also spent some time putting together some new main menu interactions for the player to select
which devices they want to use for local co-op and which dog character they will choose for each.
These systems are still in flux, but it is at least a concept showing the selection between the two
characters and that propagating into the actual gameplay flow. I intend to also wire this up so the
player selection logic will be available within the pause menu settings of the main game so the
players can easily swap characters at any time.

{%
  include embed/video.html
  src='/assets/img/judi-n-lyle/video_clips/two_player_menu_demo.mp4'
  title='Two Player menu demo and split screen effect'
  autoplay=false
  loop=true
  muted=false
%}

Short update for today, and while I wish I could have more to show, I'm still proud of the work that
I've managed to put together. These are part of the core systems + mechanics that will define the
game design choices. So I'm glad to be putting in the effort now to understand how these will best
be setup to enable for more rapid development in the future.

Hope to see you again soon with hopefully some more progress (and hopefully I don't get sick again
for awhile, that was awful).

Vi ses - Jacob
