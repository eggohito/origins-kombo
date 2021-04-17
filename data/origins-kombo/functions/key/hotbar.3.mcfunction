#> origins-kombo:key/hotbar.3
#
#   > The hotbar.3 button
#
#$within origins/power origins-kombo:key/hotbar.3


#
#   Increase the score of the player in the `o-k.combo` objective
#
scoreboard players add @s o-k.combo 1


#
#   Append the string that corresponds to this key into a data storage
#
#   - For this key, we'll be appending the "key.hotbar.3" string into the storage
#
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.main append value "key.hotbar.3"

function rx.playerdb:api/save_self