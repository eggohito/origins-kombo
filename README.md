# Key Combo (Origins)
This datapack uses [PlayerDB](https://github.com/rx-modules/PlayerDB) so that multiple players can perform key combinations, or 'kombos' for short, at the same time without conflicting with one another.
<br>

This datapack also uses [Lantern Load](https://github.com/LanternMC/Load) to ensure that this datapack loads before your datapack. You can detect if this library is loaded by checking the score of the `origins-kombo` score holder in the `load.status` objective. 
<br>

e.g: `200` = version 2.0.0, etc.
<br>
<br>



<ol>
<details>
<summary>To ensure that this library loads before your datapack, you would add your load function inside the <code>#load:post_load</code> function tag (<code>data/load/tags/functions/post_load.json</code>) after copying the <code>minecraft</code> and <code>load</code> folders from the Lantern Load repository, like so:</summary>

```json
{
    "values": [
        "{namespace}:path/to/function"
    ]
}
```

* `{namespace}` being the namespace you're using. <br> 
(e.g: `data/stuff` --> `stuff:*`)

* `path/to/function` being your load function <br> 
(e.g: `data/example/functions/load.mcfunction` --> `stuff:load`)

You can see [in the example branch](https://github.com/eggohito/origins-kombo/tree/1.17.x/example/data) on how would one do it.

</details>
</ol>
<br>

# How to use:
To make a kombo, you must first press either the primary or secondary ability key once in order to activate KOMBO mode.
<br>

While in KOMBO mode, you can press the primary ability key to force-cast the 'kombo' you currently have. You can then press the secondary ability key to cancel 'kombo' casting entirely.
<br>

You can modify the players' score in the `o-k.combo.max` scoreboard objective to configure the maximum amount of key combinations a player can do while in their KOMBO mode.
<br>
<br>


<ol>
<details>
<summary><b>Applying the key combo system</b></summary>
We would first need to add the <code>origins-kombo:internal</code> power into the <code>"powers"</code> array field of an origin for the whole key combo system to work. This power is used for checking if the player has reached its max combo, reached its cast timeout limit, etc.
<br>
<br>

<ol>
<details>
<summary>Here's an example origin; and this is how its <code>"powers"</code> array field would look like in order to use the key combo system:</summary>

```json
{
    "powers": [
        "origins-kombo:internal"
    ],
    "icon": {
        "item": "minecraft:white_wool"
    }
}
```

</details>
</ol>
<br>

</details>
</ol>

<ol>
<details>
<summary><b>Registering a key or multiple keys</b></summary>
In order to perform a kombo, you must first register at least two keys into the origin.
<br>
<br>

Registering a key should be as simple as adding a power to your origin. These pre-made powers are used for appending a string in the storage entry of the player added by PlayerDB, which is then used for checking for a certain key combination pattern.
<br>


<ol>
<details>
<summary>In the example origin, we'll be registering multiple keys: attack, use, jump, sneak, left and right keys. This is how the <code>"powers"</code> array field of the origin would look like:</summary>

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
    }
}
```

</details>
</ol>
<br>


</details>
</ol>

<ol>
<details>
<summary><b>Adding your own kombo</b></summary>
To add a kombo, we must first get the input data of the player in their PlayerDB entry, a storage-based per player database system.
<br>
<br>

We can do so by running the <code>origins-kombo:api/prepare_input</code> function. Afterwards, we would check for the pattern by setting the <code>playerdb.player.data.origins-kombo.input.check</code> NBT path in the `rx:io` storage as the set pattern we wish to use. 
<br>

Using the <code>origins:if_else</code> meta action, we can run different entity actions depending on the result. We'll then use the <code>origins:command</code> entity condition type to modify the said target NBT path in the said storage, which would store the result of the ran command which we can then use to compare it to a number. 
<br>

We'll be comparing the stored result to 0 to check if the command is run successfully or not. If the command is ran successfully, we'll run the <code>origins-kombo:api/cast_fail</code> function to indicate that the casting for the kombo has failed. If the command is ran unsuccessfully, we'll run the <code>origins-kombo:api/cast_success</code> function to indicate that the casting for the kombo has succeed, you can also run any kind of entity action you wish just after running the said function as long as its inside the `"actions"` object array of the `origins:and` meta action inside the `"if_action"` object, like `origins:trigger_cooldown` for example.
<br>

The reason why we're doing it the opposite way is due to how setting an already existing value works. If the NBT already has the same value, the command will not run, therefore, getting the result of 0. If the NBT has a different value, the command will then run, therefore, getting the result of 1. 
<br>
<br>

<ol>
<details>
<summary>Here's an example kombo named <code>simple</code> inside the <code>data/example/powers/kombos</code> folder that will run a <code>/say</code> command if one would press the attack button twice:
</summary>

```json
{
    "type": "origins:action_over_time",
    "interval": 1,
    "rising_action": {
        "type": "origins:and",
        "actions": [
            {
                "type": "origins:execute_command",
                "command": "function origins-kombo:api/prepare_input"
            },
            {
                "type": "origins:if_else",
                "condition": {
                    "type": "origins:command",
                    "command": "data modify storage rx:io playerdb.player.data.origins-kombo.input.check set value [\"key.attack\", \"key.attack\"]",
                    "comparison": "==",
                    "compare_to": 0
                },
                "if_action": {
                    "type": "origins:and",
                    "actions": [
                        {
                            "type": "origins:execute_command",
                            "command": "function origins-kombo:api/cast_success"
                        },
                        {
                            "type": "origins:execute_command",
                            "command": "say Simple KOMBO"
                        }
                    ]
                },
                "else_action": {
                    "type": "origins:and",
                    "actions": [
                        {
                            "type": "origins:execute_command",
                            "command": "function origins-kombo:api/cast_fail"
                        }
                    ]
                }
            }
        ]
    },
    "condition": {
        "type": "origins:command",
        "command": "execute if entity @s[tag = origins-kombo.max_combo_reached]",
        "comparison": "==",
        "compare_to": 1
    }
}
```

</details>
</ol>
<br>

<ol>
<details>
<summary>We would then reference the example kombo in the example origin's <code>"powers"</code> array field, like so:</summary>

```json
{
    "powers": [
        "origins-kombo:internal",

        "origins-kombo:key/attack",
        "origins-kombo:key/use",
        "origins-kombo:key/jump",
        "origins-kombo:key/sneak",
        "origins-kombo:key/left",
        "origins-kombo:key/right",
        
        "example:kombos/simple"
    ],
    "icon": {
        "item": "minecraft:white_wool"
    }
}
```

</details>
</ol>
<br>

You can visit [the example branch](https://github.com/eggohito/origins-kombo/tree/1.17.x/example/data/example/powers/kombos) to see all the example kombos to use as a guide for creating your own kombo. 

</details>
</ol>
