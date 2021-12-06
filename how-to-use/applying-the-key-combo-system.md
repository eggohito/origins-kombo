# Applying the Key Combo system

To start off, we would first need to register the `origins-kombo:internal` power into the `powers` string array field of an origin JSON for the whole Key Combo system to work.

The power is used for checking if the player has reached its max key presses, cast timeout limit, cast cooldown limit, etc.

Here's an example JSON named `test_origin.json` stored inside the `data/example/origins` folder, which has the `origins-kombo:internal` power registered in it:

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
