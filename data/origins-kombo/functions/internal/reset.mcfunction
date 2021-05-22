#> origins-kombo:internal/reset
#
#   > Reset the objectives, and storages used for combinations
#
#   - Referenced in the **`origins-kombo:internal`** power
#
#     (`data\origins-kombo\powers\internal.json`)
#
#@internal


#
#   Set the scores of the player in these objectives to 0:
#
#   - `o-k.max_combo.r`
#   - `o-k.kombos`
#   - `o-k.casted`
#   - `o-k.combo`
#
scoreboard players set @s o-k.max_combo.r 0

scoreboard players set @s o-k.kombos 1

scoreboard players set @s o-k.casted 0

scoreboard players set @s o-k.combo 0


#
#   Remove the `player.db.player.data.origins-kombo` NBT path from the `rx:io` storage
#
function rx.playerdb:api/get_self

data remove storage rx:io playerdb.player.data.origins-kombo.input

function rx.playerdb:api/save_self