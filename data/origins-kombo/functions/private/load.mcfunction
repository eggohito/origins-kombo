#> origins-kombo:private/load
#
#   > The main load function for the `origins-kombo` namespace
#
#@within tag/function load:load
#declare storage origins-kombo:


#   Add scoreboard objective(s)
scoreboard objectives add o-k.max_combo dummy

scoreboard objectives add o-k.holder dummy

scoreboard objectives add o-k.combo dummy


#   Display load message
tellraw @a {"text": "[+ Loaded \"Key Combos (Origins)\" @ 2.0.0]", "color": "green"}


#   Set constants
scoreboard players set origins-kombo load.status 200