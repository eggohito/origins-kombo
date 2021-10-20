---
title: Registering a key or multiple keys
date: 2021-10-20
---
#   Registering a key or multiple keys

In order to perform a kombo, you must at least register a single key in the origin.

Registering a key should be as simple as adding a power to your origin JSON's `"powers"` string array field. These pre-made powers are used for appending a string in the storage entry of the player in the PlayerDB library, which is then used for checking for certain key combination patterns.

In the example origin JSON file, we'll be registering multiple keys: attack, use, jump, sneak, left and right keys. Here's how the example origin JSON file's `"powers"` string array field would look like:

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