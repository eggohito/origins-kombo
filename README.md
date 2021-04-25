# Key Combo (Origins)
A datapack library that can activate powers depending on the power's set key combination pattern.
<br>
This datapack uses [PlayerDB](https://github.com/rx-modules/PlayerDB) so that multiple players can perform key combinations, or 'kombos' for short, at the same time without conflicting with one another.
<br/>

# How to use:
The 'kombo' (key combo) system has some adjustable per player-based variables, which you can set to however you like:
<br>

* `%max_combo` - score holder, stored in the `origins-kombo` objective. Try not to set the score of this variable to 0 or less! The default value is 4.
* The score of each player in the `o-k.max_combo` objective - used for determining the max combinations the player can do in their KOMBO MODE. Try not to set the score of the player in this objective to 0 or less as well! The default value matches `%max_combo`'s value


<ol>
<details>
<summary><b>Applying the key combo system</b></summary>
We would first need to add the <code>origins-kombo:internal</code> power into the <code>"powers"</code> list of an origin for the whole key combo system to work. This power is used for checking if the player has reached its max combo, reached its cast timeout limit, etc.
<br>
<br>

Here's an example origin; and this is how its <code>"powers"</code> list would look like in order to use the key combo system:
```json
{
    "powers": [
        "origins-kombo:internal"
    ],
    "icon": {
        "item": "minecraft:bedrock"
    },
    "unchoosable": true,
    "order": 0,
    "impact": 0,
    "name": "EXAMPLE",
    "description": " "
}
```

</details>
</ol>

<ol>
<details>
<summary><b>Registering a key or multiple keys</b></summary>
In order to perform a kombo, you must first register at least one key into the origin.
<br>

Registering a key should be as simple as adding a power to your origin. These pre-made powers are used for appending a string in the storage entry of the player added by PlayerDB, which is then used for checking for a certain key combination pattern.
<br>
<br>

In the example origin, we'll be registering multiple keys: the primary, and the secondary ability keys. This is how the `powers` list of the origin would look like:

```json
{
    "powers": [
        "origins-kombo:internal",

        "origins-kombo:key/origins/primary_active",
        "origins-kombo:key/origins/secondary_active"
    ],
    "icon": {
        "item": "minecraft:bedrock"
    },
    "unchoosable": true,
    "order": 0,
    "impact": 0,
    "name": "EXAMPLE",
    "description": " "
}
```

</details>
</ol>

<ol>
<details>
<summary><b>Adding a "simple" kombo</b></summary>
To add a "simple" kombo, we must first get the input data of the player in their storage entry added by PlayerDB. 
<br>
<br>

We can do so by running the <code>rx.playerdb:api/get_self</code> function. Afterwards, we would check for the pattern by setting the <code>playerdb.player.data.origins-kombo.check</code> NBT path in the `rx:io` storage as the set pattern we wish to use. 
<br>

Using the <code>origins:if_else</code> meta action, we can run different actions depending on the result. We'll then use the <code>origins:command</code> condition type to modify the said target NBT path in the said storage, which would store the result of the ran command which we can then use to compare it to a number. 
<br>

We'll be comparing the stored result to 0 to check if the command is run successfully or not. If the command is ran successfully, we'll be running the <code>origins-kombo:internal/cast_fail</code> function to indicate that the casting for the kombo has failed. If the command is ran unsuccessfully, we'll run the <code>origins-kombo:internal/cast_success</code> function to indicate that the casting for the kombo has succeed, you can also run any kind of action you wish just after running the said function.
<br>

The reason why the order is the opposite is due to how setting an already existing value works. If the NBT already has the same value, the command will not run, therefore, getting the result of 0. If the NBT has a different value, the command will then run, therefore, getting the result of 1. 
<br>
<br>

Here's an example kombo that will run a <code>/tellraw</code> command if one would press the primary ability button 4 times: <br>
(one must press either the primary, or secondary ability buttons beforehand to enable "kombo mode")

```json
{
    "type": "origins:action_over_time",
    "interval": 1,
    "rising_action": {
        "type": "origins:and",
        "actions": [
            {
                "type": "origins:execute_command",
                "command": "function rx.playerdb:api/get_self"
            },
            {
                "type": "origins:if_else",
                "condition": {
                    "type": "origins:command",
                    "command": "data modify storage rx:io playerdb.player.data.origins-kombo.check set value [\"key.origins.primary_active\", \"key.origins.primary_active\", \"key.origins.primary_active\", \"key.origins.primary_active\"]",
                    "comparison": "==",
                    "compare_to": 0
                },
                "if_action": {
                    "type": "origins:and",
                    "actions": [
                        {
                            "type": "origins:execute_command",
                            "command": "function origins-kombo:internal/cast_success"
                        },
                        {
                            "type": "origins:execute_command",
                            "command": "tellraw @a {\"translate\": \"%s casted \\\"Simple Kombo\\\"!\", \"color\": \"yellow\", \"with\": [{\"selector\": \"@s\", \"color\": \"green\"}]}"
                        }
                    ]
                },
                "else_action": {
                    "type": "origins:execute_command",
                    "command": "function origins-kombo:internal/cast_fail"
                }
            }
        ]
    },
    "condition": {
        "type": "origins:command",
        "command": "scoreboard players get @s o-k.max_combo.r",
        "comparison": "==",
        "compare_to": 1
    }
}
```

We would then reference the example kombo in the example origin's <code>"powers"</code> list, like so:

```json
{
    "powers": [
        "origins-kombo:internal",

        "origins-kombo:key/origins/primary_active",
        "origins-kombo:key/origins/secondary_active",
        
        "origins-kombo-example:kombos/simple"
    ],
    "icon": {
        "item": "minecraft:bedrock"
    },
    "unchoosable": true,
    "order": 0,
    "impact": 0,
    "name": "EXAMPLE",
    "description": " "
}
```

</details>
</ol>
