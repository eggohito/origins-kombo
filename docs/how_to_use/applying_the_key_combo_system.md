---
title: Applying the key combo system
date: 2021-10-20
---
#   Applying the key combo system

We would first need to add the `origins-kombo:internal` power into the `"powers"` string array field of an origin JSON for the whole key combo system to work. This power is used for checking if the player has reached its max key presses, its cast timeout limit, casting cooldown, etc.

Here's an example origin JSON file, named `test_origin.json`, stored inside the `data/example/origins` folder that has the `origins-kombo:internal` power registered in its `"powers"` string array field:

```json
{
    "powers": [
        "origins-kombo:internal"
    ],
    "icon": {
        "item": "minecraft:white_wool"
    },
    "name": "Test Origin",
    "description": "An origin for testing example kombos.\n"
}
```