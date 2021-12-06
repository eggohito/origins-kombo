#> origins-kombo:uninstall
#
#   > Removes stuff added by the `origins-kombo` namespace
#
#@user


#   Display an uninstallation message
tellraw @a {"translate": "[- Disabled \"Key Combo (Origins)\" @ v%1$s.%2$s.%3$s]", "color": "red", "with": [{"storage": "origins-kombo:", "nbt": "root.semver.major"}, {"storage": "origins-kombo:", "nbt": "root.semver.minor"}, {"storage": "origins-kombo:", "nbt": "root.semver.patch"}]}


#   Remove the `origins-kombo` data of all players in PlayerDB
data remove storage rx:global playerdb.players[].data.origins-kombo


#   Remove scoreboard objectives
scoreboard objectives remove o-k.cooldown.cur

scoreboard objectives remove o-k.cooldown.max

scoreboard objectives remove o-k.timeout.cur

scoreboard objectives remove o-k.timeout.max

scoreboard objectives remove o-k.combo.max

scoreboard objectives remove o-k.buffer

scoreboard objectives remove o-k.combo

scoreboard objectives remove o-k.main


#   Remove global data storage
data remove storage origins-kombo: root


#   Disable datapack
datapack disable "file/origins-kombo_1.16_dev"

datapack disable "file/origins-kombo_1.16_v3.1.0"

datapack disable "file/origins-kombo_1.16_v3.1.0.zip"