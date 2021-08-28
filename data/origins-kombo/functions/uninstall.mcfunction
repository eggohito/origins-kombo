#> origins-kombo:uninstall
#
#   > Removes stuff added by the `origins-kombo` namespace
#
#@user


#   Display an uninstallation message
tellraw @a {"translate": "[- Disabled \"Key Combos (Origins) @ v%s\"]", "color": "red", "with": [{"storage": "origins-kombo:", "nbt": "root.semver"}]}


#   Remove the `origins-kombo` data of all players in PlayerDB
data remove storage rx:global playerdb.players[].data.origins-kombo


#   Remove scoreboard objectives
scoreboard objectives remove o-k.max_combo

scoreboard objectives remove o-k.buffer

scoreboard objectives remove o-k.combo

scoreboard objectives remove o-k.main


#   Remove global data storage
data remove storage origins-kombo: root


#   Disable datapack
datapack disable "origins-kombo_1.17_v2.0.0"

datapack disable "origins-kombo_1.17_v2.0.0.zip"