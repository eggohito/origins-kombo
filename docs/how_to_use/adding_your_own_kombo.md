---
title: Adding your own kombo
date: 2021-10-20
---
#   Adding your own kombo

To add a kombo, we must first get the current input data of the player from their PlayerDB entry, which can be done by calling the `origins-kombo:api/prepare_input` function.

Afterwards, we would then check for the pattern by setting the content of the `playerdb.player.data.origins-kombo.input.check` NBT path from the `rx:io` command NBT storage as the set key combination pattern we wish to use for the power.

Using the [`origins:if_else`](https://origins.readthedocs.io/en/latest/meta_actions/if_else) meta action type, we can run different actions depending on a condition. We can then use the [`origins:command`](https://origins.readthedocs.io/en/latest/entity_conditions/command) entity condition type to execute the said command that would modify the content of the `playerdb.player.data.origins-kombo.input.check` NBT path from the `rx:io` command NBT storage, and store the result of that ran command to check if the command has been run successfully or not, and compare it to a number.

We'll be comparing the stored result of the ran command to 0 to check if the command has been run successfully or not. 

In the `if_action` object of the [`origins:if_else`](https://origins.readthedocs.io/en/latest/meta_actions/if_else) meta action type, we'll be calling the `origins-kombo:api/cast_success` function to indicate that the casting for the kombo has succeed, but you can also run any entity actions if you wish to extend the functionality of casting the kombo successfully.

In the `else_action` object of the [`origins:if_else`](https://origins.readthedocs.io/en/latest/meta_actions/if_else) meta action type, we'll be calling the `origins-kombo:api/cast_fail` function to indicate that the casting for the kombo has failed, but you can also run any entity actions if you wish to extend the functionality of casting the kombo unsuccessfully.

## Why are we comparing the stored result to 0?

The reason why we're comparing the stored result to 0 is due to how Minecraft handles NBT already having the set value. If the NBT already has the same value you're trying to set it as, the command will fail, therefore, getting the result of 0. If the NBT has a different value, the command will then succeed, therefore, getting the result of 1.

Here's an example kombo JSON, named `simple.json`, stored in the `data/example/powers/kombos` folder that will execute a `/say` command if one would press the attack button twice:

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
    },
    "name": "Simple KOMBO",
    "description": "A kombo that runs a /say command that says 'Simple KOMBO'.\n",
    "badges": [
        {
            "sprite": "origins:textures/gui/badge/info.png",
            "text": "Pattern: key.attack, key.attack"
        }
    ]
}
```