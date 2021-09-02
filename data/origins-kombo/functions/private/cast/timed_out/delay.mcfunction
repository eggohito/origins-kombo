#> origins-kombo:private/cast/timed_out/delay
#
#   > Delays a function that would display a message that indicates that the kombo casting process has timed out
#
#    called from:
#       - `origins-kombo:internal_kombo_mode_timeout_visual`
#
#@private


function rx.playerdb:api/get_self

execute if data storage rx:io playerdb.player.data.origins-kombo.msg.timed_out store result score @s o-k.main run time query gametime

execute if data storage rx:io playerdb.player.data.origins-kombo.msg.timed_out run title @s actionbar {"text": ""}

execute if data storage rx:io playerdb.player.data.origins-kombo.msg.timed_out run schedule function origins-kombo:private/cast/timed_out/check 2t