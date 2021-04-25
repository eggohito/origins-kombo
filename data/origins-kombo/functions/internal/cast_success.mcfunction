#> origins-kombo:internal/cast_success
#
#   > Run this function if the current kombo matches the set pattern
#
#   - Must be referenced in your own 'kombos'
#
#@internal


#
#   Reset the scores of the player in the `o-k.casting` and `o-k.max_combo.r` objectives
#
scoreboard players set @s o-k.casting 0

scoreboard players set @s o-k.max_combo.r 0


#
#   Set the score of the player in the `o-k.casted` objective to 1
#
scoreboard players set @s o-k.casted 1