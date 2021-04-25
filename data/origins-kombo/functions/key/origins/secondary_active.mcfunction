#> origins-kombo:key/origins/secondary_active
#
#   > The secondary ability button
#
#   - Referenced in the **`origins-kombo:key/origins/secondary_active`** power
#
#     (`data\origins-kombo\powers\key\origins\secondary_active.json`)
#
#@private


#
#   Increase the score of the player in the `o-k.combo` objective
#
scoreboard players add @s o-k.combo 1


#
#   Append the string that corresponds to this key into a data storage
#
#   - For this key, we'll be appending the "key.origins.secondary_active" string into the storage
#
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.input append value "key.origins.secondary_active"

function rx.playerdb:api/save_self


#
#   Reference a function tag to run additional functons inside it
#
function #origins-kombo:key/origins/secondary_active