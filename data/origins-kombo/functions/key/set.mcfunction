#> origins-kombo:key/set
#
#   > Initialize the player's max combo value
#
#@public


function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.key_set set value "default"

function rx.playerdb:api/save_self