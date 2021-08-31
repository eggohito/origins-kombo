#> origins-kombo:key/player_list/check
#
#   > Checks if the player's key set is set to `"default"`
#
#@within tag/function *:key/player_list


execute if data storage rx:io playerdb.player.data.origins-kombo{key_set: "default"} run function origins-kombo:key/player_list/send