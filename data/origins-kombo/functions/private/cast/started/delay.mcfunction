#> origins-kombo:private/cast/started/delay
#
#   > Delays a function that would display a message that indicates that the kombo casting process has started
#
#    called from:
#       - `origins-kombo:internal_kombo_mode_primary`
#       - `origins-kombo:internal_kombo_mode_secondary`
#
#@private


function rx.playerdb:api/get_self


execute if data storage rx:io playerdb.player.data.origins-kombo.msg.started store result score @s o-k.main run time query gametime

execute if data storage rx:io playerdb.player.data.origins-kombo.msg.started run title @s actionbar {"text": ""}

execute if data storage rx:io playerdb.player.data.origins-kombo.msg.started run schedule function origins-kombo:private/cast/started/check 2t