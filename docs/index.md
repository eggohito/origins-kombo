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

* 'Kombo' stands for 'key combination'.

* In order to make a 'kombo', you must first enable 'KOMBO MODE', which can be done by pressing either the Primary or Secondary ability key once.

* While in 'KOMBO MODE', you can press the Primary ability key to 'force-cast' a 'kombo' you currently have, and you can press the Secondary ability key to cancel 'kombo' casting entirely.

* You can modify the score of the player(s) in the `o-k.combo.max` scoreboard objective to configure the max amount of key presses the player can do while in their 'KOMBO MODE'.

* The datapack library uses [PlayerDB](https://github.com/rx-modules/PlayerDB) to store arbitrary data for each player, meaning that each player can cast 'kombos' at the same time without conflicts.

* The datapack library uses [Lantern Load](https://github.com/LanternMC/Load) to ensure that the datapacks that will depend on it will load *after* it, which can then be utilized to check if the datapack library is loaded beforehand. <br> [See here for more information.](misc/lantern_load_integration.md)