#> origins-kombo:key/hotbar.7
#
#   > The hotbar.7 button
#
#   - Referenced in the **`origins-kombo:key\hotbar.7`** power
#
#     (`data\origins-kombo\powers\key\hotbar.7.json`)
#
#@private


#   Increase the score of the player in the `o-k.combo` objective
scoreboard players add @s o-k.combo 1


#   Append the string that corresponds to this key into a data storage
#       - For this key, we'll be appending the "key.hotbar.7" string into the storage
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.input.current append value "key.hotbar.7"

function rx.playerdb:api/save_self


#   Reference a function tag to run additional functions inside it
function #origins-kombo:key/hotbar.7