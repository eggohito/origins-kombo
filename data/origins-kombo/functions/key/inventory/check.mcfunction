#> origins-kombo:key/inventory/check
#
#   > Checks if the player's key set is set to `"default"`
#
#@within tag/function *:key/inventory


execute if data storage rx:io playerdb.player.data.origins-kombo{key_set: "default"} run function origins-kombo:key/inventory/send