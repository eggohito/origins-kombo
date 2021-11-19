#> origins-kombo:private/dhp
#
#   > A function for declaring stuff in Datapack Helper Plus
#
#@private
#declare storage origins-kombo:
#alias vector MinecraftPhi.sign -30000000 0 1603
#alias vector MinecraftPhi.shulker 30000000 0 1062


#   Tell the player that's currently running this function that they are not supposed to run this function
tellraw @s {"translate": "%s You're not supposed to run this function :P", "color": "gray", "italic": true, "with": [{"text": "[@:origins-kombo]", "bold": true}]}