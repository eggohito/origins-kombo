#> example:kombo-origin/private/load/check_dependencies
#
#   > Check for dependencies before fully loading the `origins-kombo_example` datapack
#
#@within tag/function load:post_load


#   Add a variable that indicates the pack is currently checking for dependencies
scoreboard players set #origins-kombo.example.chk_dep load 1


#   Check if the origins-kombo datapack library is loaded
execute if score origins-kombo.major load matches 3.. if score origins-kombo.minor load matches 1.. run function example:kombo-origin/private/load

execute unless score origins-kombo.major load matches 3.. if score origins-kombo.minor load matches 1.. run function example:kombo-origin/uninstall


scoreboard players reset #origins-kombo.example.chk_dep load