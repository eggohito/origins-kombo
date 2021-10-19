#> origins-kombo:api/cast_fail
#
#   > If the current kombo pattern does not match the current power kombo pattern
#
#@internal


#   Reset the storage
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.input.check set from storage rx:io playerdb.player.data.origins-kombo.input.current

function rx.playerdb:api/save_self