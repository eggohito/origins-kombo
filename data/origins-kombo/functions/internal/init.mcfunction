#> origins-kombo:internal/init
#
#   > Run this function when a player joins
#
#@within advancement origins-kombo:internal/init


#
#   Set the score of the player in the `o-k.max_combo` objective to 4, 
#   which is the default value
#
scoreboard players operation @s o-k.max_combo = %max_combo o-k.max_combo

execute unless score @s o-k.max_combo = %max_combo o-k.max_combo run advancement revoke @s only origins-kombo:internal/init