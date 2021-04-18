#> origins-kombo:key/secondary
#
#   > The secondary ability button
#
#$within origins/power origins-kombo:key/secondary


#
#   Increase the score of the player in the `o-k.combo` objective
#
scoreboard players add @s o-k.combo 1


#
#   Append the string that corresponds to this key into a data storage
#
#   - For this key, we'll be appending the "key.origins.secondary" string into the storage
#
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.main append value "key.origins.secondary"

function rx.playerdb:api/save_self


#
#   Run a function tag
#
#   - Can be used as an indicator for the key, etc.
#
function #origins-kombo:key/secondary