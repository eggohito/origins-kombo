#> example:kombo-origin/private/load
#
#   > The main load function for the `example` namespace
#
#@within function *:kombo-origin/private/load/check_dependencies


#   Add scoreboard objectives
scoreboard objectives add o-k.example dummy


#   Display load/reload message
execute unless score #load o-k.example = #load o-k.example run tellraw @a {"text": "[+ Loaded \"Key Combo: Example (Origins)\"]", "color": "green"}

execute if score #load o-k.example = #load o-k.example run tellraw @a[tag = origins-kombo.debugger] {"text": "[= Reloaded \"Key Combo: Example (Origins)\"]", "color": "gold"}


scoreboard players set #load o-k.example 1