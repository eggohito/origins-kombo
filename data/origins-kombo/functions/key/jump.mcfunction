#> origins-kombo:key/jump
#
#   > The jump button
#
#   - Referenced in the **`origins-kombo:key\jump`** power
#
#     (`data\origins-kombo\powers\key\jump.json`)
#
#@private


#
#   Increase the score of the player in the `o-k.combo` objective
#
scoreboard players add @s o-k.combo 1


#
#   Append the string that corresponds to this key into a data storage
#
#   - For this key, we'll be appending the "key.jump" string into the storage
#
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.input append value "key.jump"

function rx.playerdb:api/save_self


#
#   Reference a function tag to run additional functions inside it
#
function #origins-kombo:key/jump