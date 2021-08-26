#> origins-kombo:private/reset
#
#   > Reset stuff
#
#@internal


#   Remove all the tags
tag @s remove origins-kombo.has_matching_kombo

tag @s remove origins-kombo.max_combo_reached

tag @s remove origins-kombo.casting


#   Reset the player's score
scoreboard players set @s o-k.combo 0

scoreboard players set @s o-k.holder 1


#   Save the current input as previous, then clear the current input
function rx.playerdb:api/get_self

data remove storage rx:io playerdb.player.data.origins-kombo.input.check

data modify storage rx:io playerdb.player.data.origins-kombo.input.previous set from storage rx:io playerdb.player.data.origins-kombo.input.current

data remove storage rx:io playerdb.player.data.origins-kombo.input.current

function rx.playerdb:api/save_self