#> origins-kombo:private/set_semver
#
#@within
#   *:private/load
#   *:private/load/**


data modify storage origins-kombo: root.semver.major set value 3

data modify storage origins-kombo: root.semver.minor set value 1

data modify storage origins-kombo: root.semver.patch set value 0


scoreboard players set origins-kombo load 1


execute store result score origins-kombo.major load run data get storage origins-kombo: root.semver.major

execute store result score origins-kombo.minor load run data get storage origins-kombo: root.semver.minor

execute store result score origins-kombo.patch load run data get storage origins-kombo: root.semver.patch