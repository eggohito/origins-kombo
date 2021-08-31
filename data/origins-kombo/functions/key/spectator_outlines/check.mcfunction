#> origins-kombo:key/spectator_outlines/check
#
#   > Checks if the player's key set is set to `"default"`
#
#@within tag/function *:key/spectator_outlines


execute if data storage rx:io playerdb.player.data.origins-kombo{key_set: "default"} run function origins-kombo:key/spectator_outlines/send