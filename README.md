# Key Combos (Origins)
A datapack that can activate a power depending on the power's set key pattern.
<br>
This datapack uses [PlayerDB](https://github.com/rx-modules/PlayerDB) so that multiple players can cast spells at the same time without conflicting with one another.
<br/>

# How to use:
<ol>
<details>
<summary><b>Applying the key combo system</b></summary>
We would first need to add the <code>origins-kombo:__internal</code> power into the <code>"powers"</code> list of an origin for the whole key combo system to work. This power is used for checking if the player has reached its max combo, reached its cast timeout limit, etc.

The example origin that'll be provided will be named "Wizard", and this is how its <code>"powers"</code> list would look like in order to use the key combo system:
```json
{
    "name": "Wizard",
    "description": "Wizards can cast a certain spell depending on a key pattern",
    "icon": {
        "item": "origins:orb_of_origin"
    },
    "powers": [
        "origins-kombo:__internal"
    ]
}
```

</details>
</ol>

<ol>
<details>
<summary><b>Registering a key/multiple keys</b></summary>
In order to cast a <i>"spell"</i>, you must first register at least one key into the origin. Registering a key should be as simple as adding a power to your origin. These pre-made powers are used for appending a string in the storage entry of the player added by PlayerDB, resulting in a static pattern.
<br>

In the example origin, we'll be adding multiple keys: primary, secondary, forward, back, left, right, jump, and sneak. This is how it would look like:

```json
{
    "name": "Wizard",
    "description": "Wizards can cast a certain spell depending on a key pattern",
    "icon": {
        "item": "origins:orb_of_origin"
    },
    "powers": [
        "origins-kombo:__internal",
        
        "origins-kombo:key/primary",
        "origins-kombo:key/secondary",
        "origins-kombo:key/forward",
        "origins-kombo:key/back",
        "origins-kombo:key/left",
        "origins-kombo:key/right",
        "origins-kombo:key/jump",
        "origins-kombo:key/sneak"
    ]
}
```

</details>
</ol>

<ol>
<details>
<summary><b>Adding a "simple" spell</b></summary>
To add a spell, we must first get the data of the player in their storage entry added by PlayerDB. 
<br>
<br>

We can do so by running the <code>rx.playerdb:api/get_self</code> function. Afterwards, we would check for the pattern by setting the <code>playerdb.player.data.origins-kombo.check</code> NBT path in the player's storage as the set pattern we wish to use. 
<br>

Using the <code>origins:if_else</code> action, we can run different actions depending on the result. We'll then use the <code>origins:command</code> condition type to modify the said target NBT path, which would store its result which we can then use to compare. 
<br>

We'll be comparing the value to 0 to check if the command is run successfully or not. If the command is ran successfully, we'll be running the <code>origins-kombo:internal/cast_fail</code> function to indicate that the casting for the spell has failed. If the command is ran unsuccessfully, we'll run the <code>origins-kombo:internal/cast_success</code> function to indicate that the casting for the spell has succeed, you can also run any kind of action you wish just after running the said function.
<br>

Here's an example spell that will run a <code>/tellraw</code> command if one would press the primary ability button 4 times: <br>
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
                    "command": "data modify storage rx:io playerdb.player.data.origins-kombo.check set value [\"key.origins.primary\", \"key.origins.primary\", \"key.origins.primary\", \"key.origins.primary\"]",
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
                            "command": "tellraw @a {\"translate\": \"%s casted \\\"Simple Spell\\\"!\", \"color\": \"yellow\", \"with\": [{\"selector\": \"@s\"}]}"
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
        "command": "execute if entity @s[tag = o-k.max_combo_reached]",
        "comparison": "==",
        "compare_to": 1
    }
}
```

We would then reference the example <i>"spell"</i> in the example origin's <code>"powers"</code> list, like so:

```json
{
    "name": "Wizard",
    "description": "Wizards can cast a certain spell depending on a key pattern",
    "icon": {
        "item": "origins:orb_of_origin"
    },
    "powers": [
        "origins-kombo:__internal",
        
        "origins-kombo:key/primary",
        "origins-kombo:key/secondary",
        "origins-kombo:key/forward",
        "origins-kombo:key/back",
        "origins-kombo:key/left",
        "origins-kombo:key/right",
        "origins-kombo:key/jump",
        "origins-kombo:key/sneak",

        "kombo-example:simple_spell"
    ]
}
```

</details>
</ol>