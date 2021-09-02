#> origins-kombo:private/cast/unregistered/display
#
#   > Indicates that the casted kombo is unregistered
#
#@within function *:private/cast/unregistered/check


function rx.playerdb:api/get_self

title @s actionbar {"storage": "rx:io", "nbt": "playerdb.player.data.origins-kombo.msg.unregistered", "interpret": true}

scoreboard players reset @s o-k.main