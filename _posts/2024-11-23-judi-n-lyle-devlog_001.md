---
layout: post
title: Judi-n-Lyle Devlog - 001
date: 2024-11-23 13:00 -0500
categories: [Judi-n-Lyle GameDev]
tags: [devlog, judi-n-lyle]
---

![judi-n-lyle](/assets/img/judi-n-lyle/judi-n-lyle.png){: .right width="200" height="200" }

It's been a hot minute since the last post and I wanted to talk about some of the things I've been
working towards. I don't have much to show from the classic "productivity" sense with respect to
concrete output and things moving on the screen. However, I have been spending a lot of time in the
planning phase. I think this phase is sort of understated and overlooked by solo developers who
often value work and productivity from a raw output wrt lines of code or assets created, but we need to
make sure we actually understand what we are building. Often, this outlook on work and productivity
leads to burnout and toil as the pressure for writing more code and systems is overtaking the phase
of stepping back and roadmapping to a more successful finish line. This is something I've discussed
in depth with my fellow game dev friend. So I am practicing that skill and working towards making
sure I am building the *right* thing for myself that I will be proud of. Anyways, mini rant over,
let's get to the fun __output__ and show you what I've got.

The biggest thing I have right now in terms of Judi-n-Lyle is setting up a project in
[Linear](https://linear.app) which is an amazing project management tool I have been recently using
in my professional software career. I went through an exercise to plan out and shape work for myself
with the initial final goal in mind of having a playable demo for Judi-n-Lyle to showcase the vision
and atmosphere of the game. I would love to get some raw feedback from potential users to understand
if I am making a game that would be enjoyed by many, or whether it would be just for myself. I also
have it in mind that while I would love to make some money on this experience, but that is not
*explicitly* why I am doing this journey. I want to make something that I am proud of, but along
with that, I want to make something that other people would also love to play.

For this prototype, I went through and identified the following "pillars/vertical slices" of work I
need to accomplish.

<table>
    <tr style="text-align:center">
        <th>Judi and Lyle<br> Character Controllers</th>
        <th>2 Levels: Design and<br> puzzle mechanics</th>
        <th>Environment art</th>
    </tr>
    <tr>
        <td>Design initial controller<br> contraints</td>
        <td>Determine Level + Character<br> constraints</td>
        <td>Tilemap or other for ground<br> + platform interactions</td>
    </tr>
    <tr>
        <td>Design and define special<br> abilities for Judi and Lyle</td>
        <td>Gray-box design the structure<br> of each level</td>
        <td>Basic Parallax backround<br> generic trees</td>
    </tr>
    <tr>
        <td>Create animations for special<br> moves</td>
        <td>Determine 3 Puzzle Types</td>
        <td>Various prop design (make<br> the atmosphere come alive)</td>
    </tr>
    <tr>
        <td>Refine character swapping<br> mechanic (play around with slomo)</td>
        <td>Design for enemy mechanics<br> on how to evade/attack</td>
        <td></td>
    </tr>
</table>

<table>
    <tr style="text-align:center">
        <th>Post Processing<br> + VFX</th>
        <th>SFX</th>
        <th>Basic Music Concept</th>
        <th>GUI/UI + Menus</th>
        <th>Enemy Design</th>
    </tr>
    <tr>
        <td>Create a list of VFX<br> to implement</td>
        <td>Create a list of SFX<br> to implement</td>
        <td>Decide if making<br> myself or<br> outsourcing</td>
        <td>Main menu UI design</td>
        <td>Design 2 enemies</td>
    </tr>
    <tr>
        <td>Setup basic Post<br> Processing stack<br> (bloom, vignette,<br> etc.)</td>
        <td>Judi + Lyle Barking<br> + various noises</td>
        <td>Set budget for<br> music or use<br> royalty free</td>
        <td>Pause menu UI design</td>
        <td>Enemy art assets</td>
    </tr>
    <tr>
        <td>Known VFX:<br>Leaves falling<br> + rustling<br>Footprint dirt<br> rustling</td>
        <td>UI SFX</td>
        <td></td>
        <td>HUD Design</td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>Ambient Sounds</td>
        <td></td>
        <td>Credits + Thank you<br> screen</td>
        <td></td>
    </tr>
</table>

I am a very ambitious person, but I also want to be realistic and kind to myself. I know that I have
a great deal of skills, but creating music is not one I currently possess. That area is something I
am considering using other sources for and maybe I will come back and learn to make some fun
chiptune music myself. However, I understand how crucial music is to a videogame experience, and I
also understand that realistically for a prototype to be successful in a reasonable timeframe, I
will just have to accept my limitations and focus on getting other things done first that matter
more to me.

I have also gone through these vertical slices and prioritized components that are most important
and *block* other ones such as the following.

- Determine Level + Character Constraints
- Determine Puzzle Formats/Types
- Design Initial Contraints for Levels + Characters

I am working from a mindset of "I need to define and understand my design constraints for levels and
characters in order to make a more cohesive experience." That is one thing I learned from my
experience making a puzzle game, [Electriload](https://yakobjorgensen.itch.io/electriload) for the Godot Wild Game Jam.
The important lesson learned there is that I chose an incredibly specific set of puzzle constraints
for myself and that made it clear for how I designed levels. Once I made those distinctions, I could
whip out 10 levels in hours instead of spending more brain energy deciding new potential mechanics
everytime I had a fresh idea. Ideas are cheap, but can be expensive in the long run if it
weighs down the time spent actually developing.

Take the time to slow down, take a step back, assess what you are building and why. This will
hopefully make all the difference for me in this project.

Thanks again for reading! Hope to see you again very soon :)
