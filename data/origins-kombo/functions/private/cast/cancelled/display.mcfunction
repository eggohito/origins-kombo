#> origins-kombo:private/cast/cancelled/display
#
#   > Indicates that the kombo casting process has been cancelled
#
#@within function *:private/cast/cancelled/check


function rx.playerdb:api/get_self

title @s actionbar {"storage": "rx:io", "nbt": "playerdb.player.data.origins-kombo.msg.cancelled", "interpret": true}

scoreboard players reset @s o-k.main