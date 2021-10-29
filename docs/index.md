---
title: Home
date: 2021-10-19
---
#   Welcome to origins-kombo documentation!

This wiki should contain all the information you need to know about the `origins-kombo` library.

`origins-kombo` is a datapack library that can activate powers depending on the power's set key combination pattern. This datapack library is to be used alongside the [Origins](https://github.com/apace100/origins-fabric) mod by Apace100.

Visit the [GitHub repository](https://github.com/eggohito/origins-kombo) of the project for a download link.

!!! note

    This wiki is currently work-in-progress!

##  General information

In order to make a kombo (key combination), you must first enable 'kombo mode' by pressing either the primary or secondary key once.

While in 'kombo mode', you can press the primary key to cast a kombo you currently have forcefully. You can then press the secondary key to disable 'kombo mode'.

The kombo system provides configurable variables that can be modified however one likes to:

Name | Type | Default | Description
-----|------|---------|-------------
`o-k.combo.max` | Scoreboard Objective (dummy) | `4` | Determines how many key presses a player can do before casting their kombo.
`o-k.cooldown.max` | Scoreboard Objective (dummy) | `100` | Determines the cooldown for being able to cast a kombo.
`o-k.timeout.max` | Scoreboard Objective (dummy) | `40` | Deterimes how long a player can be in 'kombo mode' before timing out.