#> origins-kombo:key/command/check
#
#   > Checks if the player's key set is set to `"default"`
#
#@within tag/function *:key/command


execute if data storage rx:io playerdb.player.data.origins-kombo{key_set: "default"} run function origins-kombo:key/command/send