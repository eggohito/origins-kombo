#> origins-kombo:internal/reset_combo
#
#   > Reset the objectives, and storages used for combinations
#
#$within origins/power origins-kombo:internal/invalid_spell


#
#   Remove the tags
#
tag @s remove o-k.max_combo_reached


#
#   Reset the score of the player in the `o-k.cast` obj that's currently executing this function
#
scoreboard players set @s o-k.casted 0

scoreboard players set @s o-k.spells 0

scoreboard players set @s o-k.combo 0


#
#   Reset the storage
#
function rx.playerdb:api/get_self

data remove storage rx:io playerdb.player.data.origins-kombo.main

function rx.playerdb:api/save_self