#> origins-kombo:internal/cast_success
#
#   > Run this function if the current kombo matches the set pattern
#
#   - Reference this function in your kombos
#
#@internal


#
#   Add a score to the player
#
#   - Used for delaying the 'no kombo' function
#
scoreboard players add @s o-k.kombos 1


#
#   Reset the scores of the player in the `o-k.casting` and `o-k.max_combo.r` objectives
#
scoreboard players set @s o-k.casting 0

scoreboard players set @s o-k.max_combo.r 0


#
#   Set the score of the player in the `o-k.casted` objective to 1
#
scoreboard players set @s o-k.casted 1