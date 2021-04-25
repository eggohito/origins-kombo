#> origins-kombo:key/smooth_camera
#
#   > The smooth_camera button
#
#   - Referenced in the **`origins-kombo:key\smooth_camera`** power
#
#     (`data\origins-kombo\powers\key\smooth_camera.json`)
#
#@private


#
#   Increase the score of the player in the `o-k.combo` objective
#
scoreboard players add @s o-k.combo 1


#
#   Append the string that corresponds to this key into a data storage
#
#   - For this key, we'll be appending the "key.smooth_camera" string into the storage
#
function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.origins-kombo.input append value "key.smooth_camera"

function rx.playerdb:api/save_self


#
#   Reference a function tag to run additional functions inside it
#
function #origins-kombo:key/smooth_camera