#> origins-kombo:load
#
#   > The main load function for the `origins-kombo` namespace
#
#@within tag/function load:load
#declare storage origins-kombo:


#
#   Add scoreboard objective(s)
#
scoreboard objectives add o-k.max_combo.r dummy

scoreboard objectives add o-k.max_combo dummy

scoreboard objectives add o-k.casting dummy

scoreboard objectives add o-k.kombos dummy

scoreboard objectives add o-k.casted dummy

scoreboard objectives add o-k.combo dummy


#
#   Set constant(s)/variable(s)
#
execute unless score %max_combo o-k.max_combo = %max_combo o-k.max_combo run scoreboard players set %max_combo o-k.max_combo 4

scoreboard players set #origins-kombo load 1


#
#   Display a load message for debuggers
#
tellraw @a[tag = o-k.debugger] {"text": "[+ Loaded \"Key Combo (Origins)\"]", "color": "green"}