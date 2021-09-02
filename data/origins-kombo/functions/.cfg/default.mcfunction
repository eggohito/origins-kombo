#> origins-kombo:.cfg/default
#
#   > Initialize the player's max combo value
#
#@within advancement *:.cfg/default


scoreboard players set @s o-k.max_combo 4

scoreboard players set @s o-k.cooldown.max 100


function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.key_set set value "default"

data modify storage rx:io playerdb.player.data.origins-kombo.msg.started set value '{"translate": "KOMBO casting started!", "color": "green"}'

data modify storage rx:io playerdb.player.data.origins-kombo.msg.cancelled set value '{"translate": "KOMBO casting forcibly stopped!", "color": "red"}'

data modify storage rx:io playerdb.player.data.origins-kombo.msg.unregistered set value '{"translate": "Unregistered kombo pattern!", "color": "red"}'

data modify storage rx:io playerdb.player.data.origins-kombo.msg.timed_out set value '{"translate": "Kombo casting timed out!", "color": "red"}'


function rx.playerdb:api/save_self