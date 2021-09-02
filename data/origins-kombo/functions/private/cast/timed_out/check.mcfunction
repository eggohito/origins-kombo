#> origins-kombo:private/cast/timed_out/check
#
#   > Does a gametime check before displaying the according message
#
#@within function *:private/cast/timed_out/delay


execute store result score #current_gametime o-k.main run time query gametime

scoreboard players remove #current_gametime o-k.main 2

execute as @a if score @s o-k.main = #current_gametime o-k.main run function origins-kombo:private/cast/timed_out/display