#> origins-kombo:api/prepare_input
#
#   > Get the current kombo input of the player from their PlayerDB entry, and add 1 to their `o-k.buffer` objective
#
#@api


#   Prepare the current input for checking
function rx.playerdb:api/get_self


#   Add 1 to the o-k.buffer objective
scoreboard players add @s o-k.buffer 1