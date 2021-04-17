#> origins-kombo:internal/cast_success
#
#   > If the current pattern has matched with a spell
#
#@internal


#
#   Remove the `o-k.casting` and `o-k.max_combo_reached` tags
#
tag @s remove o-k.casting

tag @s remove o-k.max_combo_reached


#
#   Set the score of the player in the `o-k.casted` objective to 1
#
scoreboard players set @s o-k.casted 1