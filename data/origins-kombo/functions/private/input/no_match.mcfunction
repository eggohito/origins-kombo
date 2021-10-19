#> origins-kombo:private/input/no_match
#
#   > If the kombo pattern doesn't match any of the powers' kombo pattern
#
#@internal


#   Remove the `origins-kombo.max_combo_reached` tag
tag @s remove origins-kombo.max_combo_reached


#   Reset the score of the player in the `o-k.combo` scoreboard objective
scoreboard players set @s o-k.combo 0

scoreboard players reset @s o-k.buffer


#   Save the current input as previous, then clear the current input
function rx.playerdb:api/get_self

data remove storage rx:io playerdb.player.data.origins-kombo.input.check

data modify storage rx:io playerdb.player.data.origins-kombo.input.previous set from storage rx:io playerdb.player.data.origins-kombo.input.current

data remove storage rx:io playerdb.player.data.origins-kombo.input.current

function rx.playerdb:api/save_self