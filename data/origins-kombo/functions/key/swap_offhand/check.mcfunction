#> origins-kombo:key/swap_offhand/check
#
#   > Checks if the player's key set is set to `"default"`
#
#@within tag/function *:key/swap_offhand


execute if data storage rx:io playerdb.player.data.origins-kombo{key_set: "default"} run function origins-kombo:key/swap_offhand/send