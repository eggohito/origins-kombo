#> origins-kombo:internal/get_pattern
#
#   > Get the currently saved pattern in the player's storage
#
#$within origins/power origins-kombo:**


#
#   Get the data of the player from PlayerDB
#
function rx.playerdb:api/get_self


#
#   Save the fetched data to another temporary storage
#
data remove storage origins-kombo check

data modify storage origins-kombo: check set from storage rx:io playerdb.player.data.origins-kombo.check

say pattern checked!