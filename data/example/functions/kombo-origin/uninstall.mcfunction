#> example:kombo-origin/uninstall
#
#   > Remove stuff from this datapack, and disable it
#
#@internal


#   Display disable message
tellraw @a {"text": "[- Disabled \"Key Combo: Example (Origins)\"]", "color": "red"}

execute if score #origins-kombo.example.chk_dep load.status matches 1 run tellraw @a {"translate": " * Missing dependencies: %1$s", "color": "red", "italic": true, "with": [{"translate": "origins-kombo (at least v3.1.0)", "color": "yellow", "hoverEvent": {"action": "show_text", "contents": {"text": "Click to download!"}}, "clickEvent": {"action": "open_url", "value": "https://github.com/eggohito/origins-kombo"}}]}


#   Remove scoreboard objectives
scoreboard objectives remove o-k.example


#   Disable the datapack
datapack disable "file/origins-kombo_example"

datapack disable "file/origins-kombo_example.zip"