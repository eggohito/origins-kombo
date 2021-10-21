---
title: Applying the key combo system
date: 2021-10-20
---
#   Applying the key combo system

We would first need to register the `origins-kombo:internal` power into the `powers` string array field of an origin JSON for the whole key combo system to work.

The power is used for checking if the player has reached its set max presses, its cast timeout limit, casting cooldown, etc.

Here's an example JSON named `test_origin.json` stored inside the `data/example/origins` folder, which has the `origins-kombo:internal` power registered in its `powers` string array field:

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