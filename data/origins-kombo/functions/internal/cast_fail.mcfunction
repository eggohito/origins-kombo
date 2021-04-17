#> origins-kombo:internal/cast_fail
#
#   > If the current pattern doesn't match any
#
#@internal


#
#   Add a score to the player
#
#   - Used for delaying the 'no spell' function
#
scoreboard players add @s o-k.spells 1



#
#   Reset the storage
#
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.check set from storage rx:io playerdb.player.data.origins-kombo.main

function rx.playerdb:api/save_self