#> origins-kombo:private/load
#
#   > The main load function for the `origins-kombo` namespace
#
#@within tag/function load:load
#declare storage origins-kombo:


#   Add scoreboard objective(s)
scoreboard objectives add o-k.max_combo dummy

scoreboard objectives add o-k.buffer dummy

scoreboard objectives add o-k.combo dummy

scoreboard objectives add o-k.main dummy


#   Set semantic version
scoreboard players set origins-kombo load.status 210

data modify storage origins-kombo: root.version set value "2.1.0"


#   Display a load/reload message
execute unless score #loaded o-k.main = #loaded o-k.main run tellraw @a {"translate": "[+ Loaded \"Key Combo (Origins)\" @ v%s]", "color": "green", "with": [{"storage": "origins-kombo:", "nbt": "root.version"}]}

execute if score #loaded o-k.main = #loaded o-k.main run tellraw @a[tag = origins-kombo.debugger] {"translate": "[+ Reloaded \"Key Combo (Origins)\" @ v%s]", "color": "green", "with": [{"storage": "origins-kombo:", "nbt": "root.version"}]}

scoreboard players set #loaded o-k.main 1