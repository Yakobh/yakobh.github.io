---
layout: post
title: Judi-n-Lyle Devlog - 002
date: 2024-12-06 13:00 -0500
categories: [Judi-n-Lyle GameDev]
tags: [devlog, judi-n-lyle]
---

Well folks, unfortunately don't have much to update this time on game dev for Judi-n-Lyle. I've been
primarily focused a lot on my _real job_ and getting ready for the holidays.

![judi-n-lyle](/assets/img/judi-n-lyle/judi-n-lyle.png){: .left width="200" height="200" }

Between finishing up deliverables before the holiday season at work and dealing with mice problems
in my house (really starting to feel like [House of Mouse](https://yakobjorgensen.itch.io/house-of-mouse)),
it's felt like no energy left to do game dev. But that's why I'm writing this post, to
stay on a regular cadence with pushing out posts and reigniting the flame before the weekend to
hopefully put some love and craft into the project.

In terms of "things done" I did actually manage to iron out some of the main design constraints I
have/want to start out with. Keep in mind, these are design constraints that I want to put on myself
to make it easier to think about how I design levels and how to make choices to stay consistent.
These are all subject to change as I start to play around with these ideas and see what comes out in
play testing a prototype! 

---

**Level Constraints**

- Levels will be structured like Little Nightmares or Limbo
    - This would mean that we want players to experience levels once. They can move up and down within the level,
      but cannot go back to a previous level once it is completed.
    - There must be some defined reason as to why they cannot go back to the previous level. This could include
      the following:
        - A massive tree falls and blocks the path back.
        - They slip down a hill and can't get back up the slippery hill.
        - They fall down a hole and have to get through the underground passageway.
- Levels can be vertical meaning they contain new scenes that can go up and down, but linear progression 
  through the level moves horizontal.

![level-constraint-diagram](/assets/img/judi-n-lyle/level_constraint_diagram.png){: .center width="2160" height="1030"}

- Each level will contain at least one enemy or "tense" encounter such as completing a puzzle
  quickly or going through a chase sequence.

---

**Character Contraints**

- Main Playable Characters (Judi + Lyle)
    - Classic 2D platformer style
        - Gravity mechanics, Coyote time, Variable jump impulse based on how long you hold jump
          button
    - Special abilities (informs how the characters can maneuver)
        - *These abilities will come into play later in the game to introduce new puzzles*
        - Lyle stretches far across gaps
        - Judi can jump extra high

![character-constraint-diagram](/assets/img/judi-n-lyle/character_constraint_diagram.png){: .center width="1736" height="1150"}

- Enemies
    - Will not be constrained by classic platforming abilities.
    - Can be something than runs and jumps.
    - Some enemies will be ethereal-esque and can move beyond the bounds of the colliders.

---

**Puzzle Mechanics**

_Jotting down some basic ideas to play around with in the prototype_

- Move things around to make stairs to get over something
- Lyle special move stretch under something, Judi special move jump over something
- Lyle stretch under something, go up and push a block down for Judi to get up
- Lyle break down something for Judi to go through
- Judi jumps over something and pushes a tree down for Lyle to walk over. Or Judi can push a button or something to have
  a bridge get across.

---

With the holiday break coming up, I am planning to have some time away from work to sit
down to this hobby and hammer out some good progress towards a prototype to begin playtesting. So
we'll see how far I can get. No strict or hard deliverables on myself (I have plenty of that to
worry about elsewhere :wink:) so we'll just take it as it comes and see what fun creative juices
happen.

If you've been taking to time to read these - I really appreciate you. Have a great day and we'll
see you next time hopefully with some concrete progress in the game :)
