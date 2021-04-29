#> origins-kombo:global_uninstall
#
#   > Removes residual data added by this namespace (if there is any)
#
#   - Only run this function if the players don't have the origin(s) added by the datapacks 
#     that depend on this library
#
#@user


#
#   Display an uninstallation message
#
tellraw @a {"text": "[- Disabled \"Key Combo (Origins)\"]", "color": "red"}


#
#   Reset storage for all players
#
function #origins-kombo:uninstall

execute as @a run function origins-kombo:internal/reset


#
#   Remove scoreboard objective(s)
#
scoreboard objectives remove o-k.casted

scoreboard objectives remove o-k.casting

scoreboard objectives remove o-k.combo

scoreboard objectives remove o-k.kombos

scoreboard objectives remove o-k.max_combo

scoreboard objectives remove o-k.max_combo.r


#
#   Disable the datapack
#
datapack disable "file/origins-kombo"

datapack disable "file/origins-kombo_v1.1.zip"