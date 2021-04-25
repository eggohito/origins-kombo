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

scoreboard objectives add origins-kombo dummy


#
#   Set constant(s)/variable(s)
#
execute unless score #load origins-kombo = #load origins-kombo run scoreboard players set %max_combo o-k.max_combo 4

scoreboard players set #load origins-kombo 1


#
#   Display a load message for debuggers
#
tellraw @a[tag = o-k.debugger] {"text": "[+ Loaded \"Key Combo (Origins)\"]", "color": "green"}


#
#   Re-initialize the tick function
#
schedule function origins-kombo:tick 1t replace