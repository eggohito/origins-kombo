#> origins-kombo:key/chat
#
#   > The chat button
#
#$within origins/power origins-kombo:key/chat


#
#   Increase the score of the player in the `o-k.combo` objective
#
scoreboard players add @s o-k.combo 1


#
#   Append the string that corresponds to this key into a data storage
#
#   - For this key, we'll be appending the "key.chat" string into the storage
#
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.main append value "key.chat"

function rx.playerdb:api/save_self