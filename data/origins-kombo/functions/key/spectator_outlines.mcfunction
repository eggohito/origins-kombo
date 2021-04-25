#> origins-kombo:key/spectator_outlines
#
#   > The spectator_outlines button
#
#   - Referenced in the **`origins-kombo:key\spectator_outlines`** power
#
#     (`data\origins-kombo\powers\key\spectator_outlines.json`)
#
#@private


#
#   Increase the score of the player in the `o-k.combo` objective
#
scoreboard players add @s o-k.combo 1


#
#   Append the string that corresponds to this key into a data storage
#
#   - For this key, we'll be appending the "key.spectator_outlines" string into the storage
#
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.input append value "key.spectator_outlines"

function rx.playerdb:api/save_self


#
#   Reference a function tag to run additional functions inside it
#
function #origins-kombo:key/spectator_outlines