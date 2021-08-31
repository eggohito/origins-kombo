#> origins-kombo:key/save_toolbar_activator/send
#
#   > `key.save_toolbar_activator` keybind
#
#@within function *:key/save_toolbar_activator/check


#   Increase the score of the player in the `o-k.combo` objective
scoreboard players add @s o-k.combo 1


#   Append the string that corresponds to this key into a data storagestorage
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.input.current append value "key.save_toolbar_activator"

function rx.playerdb:api/save_self