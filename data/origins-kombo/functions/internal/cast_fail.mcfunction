#> origins-kombo:internal/cast_fail
#
#   > Run this function of the current kombo doesn't match any set pattern
#
#   - Reference this function in your 'kombos'
#
#@internal


#
#   Add a score to the player
#
#   - Used for delaying the 'no kombo' function
#
scoreboard players add @s o-k.kombos 1


#
#   Reset the storage
#
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.check set from storage rx:io playerdb.player.data.origins-kombo.input

function rx.playerdb:api/save_self