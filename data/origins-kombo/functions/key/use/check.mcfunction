#> origins-kombo:key/use/check
#
#   > Checks if the player's key set is set to `"default"`
#
#@within tag/function *:key/use


execute if data storage rx:io playerdb.player.data.origins-kombo{key_set: "default"} run function origins-kombo:key/use/send