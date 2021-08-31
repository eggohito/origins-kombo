#> origins-kombo:key/inventory/send
#
#   > `key.inventory` keybind
#
#@within function *:key/inventory/check


#   Increase the score of the player in the `o-k.combo` objective
scoreboard players add @s o-k.combo 1


#   Append the string that corresponds to this key into a data storage
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.input.current append value "key.inventory"

function rx.playerdb:api/save_self