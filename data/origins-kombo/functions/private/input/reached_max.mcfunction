#> origins-kombo:private/input/reached_max
#
#   > Process the saved inputs of the player to check if any of the player's powers matches that kombo pattern later
#
#@within origins-kombo:internal


#   Add a temporary tag to the player
scoreboard players add @s o-k.buffer 1

tag @s add origins-kombo.max_combo_reached


#   Get the player's entry from PlayerDB
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.input.check set from storage rx:io playerdb.player.data.origins-kombo.input.current

function rx.playerdb:api/save_self