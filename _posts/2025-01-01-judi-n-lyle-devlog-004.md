---
layout: post
title: Judi-n-Lyle Devlog - 004
date: 2025-01-01 15:00 -0500
categories: [Judi-n-Lyle GameDev]
tags: [devlog, judi-n-lyle]
---

![judi-n-lyle](/assets/img/judi-n-lyle/judi-n-lyle-banner.png){: .center width="600" }

Have you ever had such a deep passion for something that it consumes your very being? Every minute
thinking, contemplating, driven to an end that is so clearly in front of you and your path as
straight and understood as possible, *plagued* with thoughts as you rest your head, unable to turn
your active mind to thoughts of slumber. That has been my unhealthy obsession with developing my
video game over this last hackathon week. Simple tasks such as eating lunch, going for walks, or
even just getting up to get more water became tasks of annoyance. While this has been good for
development and raw productivity, I quickly saw this pattern resurging from my past Game Jams and
decided it needed to stop.

The holdays spent wholly with family and extra time over the last couple
of days taking my dogs on long walks has appropriately reset my brain more to balance.
It has reminded me of the important things and allowed me to step back and reassess what it is I am
building. Fresh new perspectives to base level and story development on my surroundings and
understand the intricacies of my dogs to better portray their experience in a beautiful and
compelling videogame experience. The last couple of days included me going on 3 different walks in
one day, a private walk for Judi and one for Lyle, and then and extra long walk for myself to take
inspiration photos of sewer drains, side scroll perspectives of the woods, and contemplate future
designs. It has also included a trip to IKEA to buy new fun things to spruce up our office space,
and take that taste of Sweden with *köttbullar och lingonsås* and tasty *dammsugare* (one of my
favorite little sweets for *fika* at home). This last week has been a fun dream listening to Swedish
podcasts, talking with friends in Sweden and spending virtual time with other family over the
holidays. I hope you had a great time with friends and family as well and that you are finding your
passions in a healthy balance.

<p style="text-align:center;"><strong>JUDI-N-LYLE HACKATHON RESULTS</strong></p>

Now - onto the fun part. What happened with Judi-n-Lyle development this last hackathon week?? Well
I am glad that you asked! Firstly, it was a lot of great heads down time of pure *development*. This
is something I learned from a lot of the Game Jams I participated in (albeit a little obsessive as
described above) that you have to just move quickly and get something working. It doesn't help at
this stage to contemplate abstracting away everything into different interfaces before you actually
know what you need to have. Meaning, I could spend a week of time thinking about the best
implementation for a base Actor class that I could then develop Enemy and Player classes on top of
and try to design the most ideal and "optimized" interfaces, but then that would be a week of
dedicated time purely on programming (which isn't entirely a bad thing sometimes). However, this
hackathon week was to get a *conceptual prototype* built and help me understand critical core
components to focus on leaning into further for design. It doesn't help to spend 20 hours designing
optimal systems just to realize that the entire idea needed to be scrapped and reworked anyways. At
this stage of development (and especially as a solo developer), I have to treat this project as a
sketchbook. I don't know what the final output will look like until I start putting some lines down
on the paper.

In terms of game dev, I treat *everything* with that concept - initial art assets,
SFX, VFX, programming systems, UI systems, and music. As much as I don't like to, I have been
diligent about pushing off the polish phase and final art phase onto a later date. In this way, I
have been able to move quickly in a short amount of time to build a strong concept demo for myself
to enable further development and ideas to write themselves. Along with this, I setup some basic
test scenes that are focused on a gray box design system where I am not hyper fixating on the visual
aspects, but rather solely on how the character mechanics *feel*. I have however allowed myself a
little treat during this hackathon phase to do add in some incredibly simple post processing effects
such as vignetting shaders and lighting effects to give a better *feel* for the game concept.

Checkout some of the example screenshots from the first level I worked on during this hackathon. You
can see some of these concepts here where I focused on having definitive tiles in the tilemap for
platforms vs ground vs water environment damage areas, however I tried to steer clear of jumping
into the art asset development. I focused on questions such as *how much time do I want the player
to spend here* and *what game components do I need to present to the player*. These questions
brought me to a first level that consisted of basic platforming, environmental damage, and basic
fear enemies to introduce the main components of "health", "movement mechanics", and "story."

![main-menu](/assets/img/judi-n-lyle/hackathon_01/demo-main-menu.png){: .center width="800" }
![platforms](/assets/img/judi-n-lyle/hackathon_01/demo-platforms.png){: .center width="800" }
![enemy](/assets/img/judi-n-lyle/hackathon_01/demo-enemy.png){: .center width="800" }
![pause-menu](/assets/img/judi-n-lyle/hackathon_01/demo-pause-menu.png){: .center width="800" }
![health-pickup](/assets/img/judi-n-lyle/hackathon_01/demo-health-pickup.png){: .center width="800" }

The player starts off as just Judi, who found herself far from home and hunkered down in a cave beneath
a busy road. She has been here scared and trapped for a while and she needs to build the courage to
overcome herself to make her way back home. After she escapes the cave, she progresses down into the
woods and I introduce the player to physical puzzles to push and pull objects to get to the next
area. This is the next mechanic that the player will begin to master. Once Judi has progressed past
the initial overcoming of self and understanding basic puzzle mechanics, she is reunited with her
brother Lyle who tried getting back home by himself, but needs the help of his sister to get past
physical barriers. This is where the player will be introduced to slightly different mechanics with
Lyle and understand how to interact with both Judi and Lyle to get past more and more intricate
puzzles and enemies they encounter.

Checkout a small video demo of the first *story* level with Judi. The music and sound effects are
*mostly* taken from copyright free sources aside from the dark barking which I recorded and
processed myself (I'll probably write up a blog post on that process another time). The point of
these tracks and SFX are to give me an idea of the right feel so I can come back later and work on
creating my own assets that fit the same vibe. But I have to sketch out the overall feel to know
what the final outcome will look like.

{%
  include embed/video.html
  src='/assets/img/judi-n-lyle/video_clips/game-demo-010125.mp4'
  title='Judi n Lyle Hackathon Demo'
  autoplay=false
  loop=true
  muted=false
%}

As the player continues on in the story and works to overcome fear and difficulties with both Lyle
and Judi, they will be introduced to special abilities after eating magical foods in the forest.
These special abilities will introduce different puzzle mechanics and possibilities for myself as a
designer to build out interesting boss fights and interactions. Checkout the fun special abilities
in the demo video below which showcases the initial ideas I had for Judi and Lyle.

{%
  include embed/video.html
  src='/assets/img/judi-n-lyle/video_clips/demo-mechanics.mp4'
  title='Judi n Lyle Mechanics Demo'
  autoplay=false
  loop=true
  muted=false
%}

Along with special abilities, the dog characters will gain more "health" which represents the
capacity to handle more fear within the world they live in. After helping my dogs to be less anxious
on walks and in general in the real world, I have come to understand the imporance of exposure and
the capacity to cope with triggers. I am hoping to achieve this same sentiment in Judi-n-Lyle by
treating "health" as "bravery points" that get taken away when they have to face something scary in
the world such as fear monsters, environmental dangers (water), or just unfamiliar people or things.
As they continue to face these fears, they gain a larger capacity to handler scarier sensory input
as they overcome themselves to reunite with their family. In this same vein, the concept of "dying"
in the classical game sense is actually the dogs reaching their breaking point of what they can
handle instead of a literal *death* from a story perspective (because I do not want to experience
my dogs dying over and over in a game :) and I'm sure most everyone else wouldn't either).

I am really grateful for the time I was able to sink into this hackathon. I rekindled my love and
passion for game development and for this game I have wanted to build for a while. I found a deeper
connection within myself and with my dogs as I seek to understand them better and capture them
within this video game. I am super proud of the work I was able to accomplish during this time and
really feel like I have a clear path ahead for this game.

Tusentack for reading and I hope to have more and more progress to show as the weeks go by in 2025.
Have a great start to your year and I wish you all the best - Till next time. 
