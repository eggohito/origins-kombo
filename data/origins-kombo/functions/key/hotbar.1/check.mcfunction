#> origins-kombo:key/hotbar.1/check
#
#   > Checks if the player's key set is set to `"default"`
#
#@within tag/function *:key/hotbar.1


execute if data storage rx:io playerdb.player.data.origins-kombo{key_set: "default"} run function origins-kombo:key/hotbar.1/send