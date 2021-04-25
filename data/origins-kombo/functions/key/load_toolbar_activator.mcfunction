#> origins-kombo:key/load_toolbar_activator
#
#   > The load_toolbar_activator button
#
#   - Referenced in the **`origins-kombo:key\load_toolbar_activator`** power
#
#     (`data\origins-kombo\powers\key\load_toolbar_activator.json`)
#
#@private


#
#   Increase the score of the player in the `o-k.combo` objective
#
scoreboard players add @s o-k.combo 1


#
#   Append the string that corresponds to this key into a data storage
#
#   - For this key, we'll be appending the "key.load_toolbar_activator" string into the storage
#
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.input append value "key.load_toolbar_activator"

function rx.playerdb:api/save_self


#
#   Reference a function tag to run additional functions inside it
#
function #origins-kombo:key/load_toolbar_activator