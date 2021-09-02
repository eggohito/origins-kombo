#> origins-kombo:private/cast/started/display
#
#   > Indicates that the kombo casting process has started (e.g: "KOMBO mode")
#
#@within function *:private/cast/started/check


function rx.playerdb:api/get_self

title @s actionbar {"storage": "rx:io", "nbt": "playerdb.player.data.origins-kombo.msg.started", "interpret": true}

scoreboard players reset @s o-k.main