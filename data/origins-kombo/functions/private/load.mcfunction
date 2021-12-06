#> origins-kombo:private/load
#
#   > The main load function for the `origins-kombo` namespace
#
#@within tag/function *:load


#   Add scoreboard objective(s)
scoreboard objectives add o-k.cooldown.cur dummy

scoreboard objectives add o-k.cooldown.max dummy

scoreboard objectives add o-k.timeout.cur dummy

scoreboard objectives add o-k.timeout.max dummy

scoreboard objectives add o-k.combo.max dummy

scoreboard objectives add o-k.buffer dummy

scoreboard objectives add o-k.combo dummy

scoreboard objectives add o-k.main dummy


#   Set constants
function origins-kombo:private/constants


#   Set semantic version
function origins-kombo:private/set_semver


#   Display a load/reload message
execute unless score #loaded o-k.main = #loaded o-k.main run tellraw @a {"translate": "[+ Loaded \"Key Combo (Origins)\" @ v%1$s.%2$s.%3$s]", "color": "green", "with": [{"storage": "origins-kombo:", "nbt": "root.semver.major"}, {"storage": "origins-kombo:", "nbt": "root.semver.minor"}, {"storage": "origins-kombo:", "nbt": "root.semver.patch"}]}

execute if score #loaded o-k.main = #loaded o-k.main run tellraw @a[tag = origins-kombo.debugger] {"translate": "[= Reloaded \"Key Combo (Origins)\" @ v%1$s.%2$s.%3$s]", "color": "gold", "with": [{"storage": "origins-kombo:", "nbt": "root.semver.major"}, {"storage": "origins-kombo:", "nbt": "root.semver.minor"}, {"storage": "origins-kombo:", "nbt": "root.semver.patch"}]}

scoreboard players set #loaded o-k.main 1