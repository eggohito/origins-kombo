#> origins-kombo:internal/init
#
#   > Initialize this function when a player joins
#
#@within advancement origins-kombo:init


#
#   Set the score of the player in the `o-k.m_combo` objective to 4, which is the default value
#
scoreboard players operation @s o-k.m_combo = %max_combo o-k.main

execute unless score %max_combo o-k.main = %max_combo o-k.main run advancement revoke @s only origins-kombo:init