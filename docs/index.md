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

The kombo system provides configurable scores and tags that can be utilized:


#### Scoreboard objectives
* `o-k.combo.max` - Determines how many key presses a player can do before casting their kombo automatically.
* `o-k.cooldown.max` - Determines the cooldown for being able to cast a kombo in ticks; only triggered by adding the `origins-kombo.trigger_cooldown` tag.
* `o-k.timeout.max` - Determines how long a player can be in 'kombo mode' before timing out in ticks.

#### Tags (added via `/tag`)
* `origins-kombo.trigger_cooldown` - Determines if the cooldown should be triggered if a kombo has been successfully casted.