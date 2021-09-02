#> origins-kombo:private/cast/timed_out/display
#
#   > Indicates that the kombo casting process has timed out
#
#@within function *:private/cast/timed_out/check


function rx.playerdb:api/get_self

title @s actionbar {"storage": "rx:io", "nbt": "playerdb.player.data.origins-kombo.msg.timed_out", "interpret": true}

scoreboard players reset @s o-k.main