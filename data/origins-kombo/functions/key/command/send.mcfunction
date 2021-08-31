#> origins-kombo:key/command/send
#
#   > `key.command` keybind
#
#@within function *:key/command/check


#   Increase the score of the player in the `o-k.combo` objective
scoreboard players add @s o-k.combo 1


#   Append the string that corresponds to this key into a data storage
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.input.current append value "key.command"

function rx.playerdb:api/save_self