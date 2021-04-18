#> origins-kombo:load
#
#   > The main load function for the `origins-kombo` namespace
#
#@within tag/function load:load


#
#   Add scoreboard objectives
#
#   - To use for configuring the value of max combinations in the module
#
scoreboard objectives add o-k.m_combo dummy

scoreboard objectives add o-ks dummy

scoreboard objectives add o-k.casted dummy

scoreboard objectives add o-k.combo dummy

scoreboard objectives add o-k.main dummy


#
#   Set variables/constants
#
execute unless score #load o-k.main = #load o-k.main run function origins-kombo:.cfg/default

scoreboard players set #load o-k.main 1


#
#   Display a load message for debuggers
#
tellraw @a[tag = o-k.debug] {"text": "[+ Loaded \"Key Combos (Origins)\"]", "color": "green"}