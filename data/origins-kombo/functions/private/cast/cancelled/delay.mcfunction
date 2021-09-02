#> origins-kombo:private/cast/cancelled/delay
#
#   > Delays a function that would display a message that indicates that the kombo casting process has been cancelled
#
#    called from:
#       - `origins-kombo:internal_kombo_mode_primary`
#       - `origins-kombo:internal_kombo_mode_secondary`
#
#@private


function rx.playerdb:api/get_self


execute if data storage rx:io playerdb.player.data.origins-kombo.msg.cancelled store result score @s o-k.main run time query gametime

execute if data storage rx:io playerdb.player.data.origins-kombo.msg.cancelled run title @s actionbar {"text": ""}

execute if data storage rx:io playerdb.player.data.origins-kombo.msg.cancelled run schedule function origins-kombo:private/cast/cancelled/check 2t