# Registering a key or multiple keys

In order to perform a _"kombo",_ you must at least register two "[power keys](../misc/power-keys.md)" in the `powers` string array field of the origin JSON.

[You can see here for more information about power keys.](../misc/power-keys.md)

Here's the previous example JSON named `test_origin.json` that is stored inside the `data/example/origins` folder. We'll be registering multiple "power keys" in the example: `origins-kombo:key/attack`, `origins-kombo:key/use`, `origins-kombo:key/jump`, `origins-kombo:key/sneak`, `origins-kombo:key/left` and `origins-kombo:key/right`.

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

