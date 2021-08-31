#> origins-kombo:private/init_max_combo
#
#   > Initialize the player's max combo value
#
#@within advancement *:private/init


scoreboard players set @s o-k.max_combo 4


function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.key_set set value "default"

function rx.playerdb:api/save_self