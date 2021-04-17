#> origins-kombo:key/advancements
#
#   > The advancements button
#
#$within origins/power origins-kombo:key/advancements


#
#   Increase the score of the player in the `o-k.combo` objective
#
scoreboard players add @s o-k.combo 1


#
#   Append the string that corresponds to this key into a data storage
#
#   - For this key, we'll be appending the "key.advancements" string into the storage
#
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.main append value "key.advancements"

function rx.playerdb:api/save_self