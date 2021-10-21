---
title: Registering a key or multiple keys
date: 2021-10-20
---
#   Registering a key or multiple keys

In order to perform a kombo, you must at least register a single '[power key](../misc/power_keys.md)' in the origin JSON's `powers` string array field.

[Power keys](../misc/power_keys.md) are pre-made powers used for appending the respective keybind string into the player's PlayerDB entry, which is then used for checking for certain key combination patterns.

In this example origin JSON, we'll be registering multiple power keys: `origins-kombo:key/attack`, `origins-kombo:key/use`, `origins-kombo:key/jump`, `origins-kombo:key/sneak`, `origins-kombo:key/left` and `origins-kombo:key/right`.

```json
{
    "powers": [
        "origins-kombo:internal",

        "origins-kombo:key/attack",
        "origins-kombo:key/use",
        "origins-kombo:key/jump",
        "origins-kombo:key/sneak",
        "origins-kombo:key/left",
        "origins-kombo:key/right"
    ],
    "icon": {
        "item": "minecraft:white_wool"
    },
    "name": "Test Origin",
    "description": "An origin for testing example kombos.\n"
}
```