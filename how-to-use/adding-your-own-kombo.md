# Adding your own Kombo

To start off, you'll need to use the `origins:action_over_time` power type, with an `interval` of `1`. Inside the `rising_action` object field of the power JSON, you'll use the `origins:and` meta action type to execute multiple entity action types, like so:

```json
{
    "type": "origins:action_over_time",
    "interval": 1,
    "rising_action": {
        "type": "origins:and",
        "actions": []
    }
}
```



In the `actions` object array field, we would add a new entity action object that would use the `origins:execute_command` entity action type that would then call the `origins-kombo:api/prepare_input` function via the `/function` command, like so:

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
            }
        ]
    }
}
```



Afterwards, we would add another entity action object that would use the `origins:if_else` meta action type. Inside the `condition` entity condition object of the meta action, you would use the `origins:command` entity condition type that would execute a `/data modify` command.

The `/data modify` command will then set the power's key combination pattern into the `playerdb.player.data.origins-kombo.input.check` NBT path from the `rx:io` storage. We would then check if the result from that command is `0` in order to check if it is successful, like so:

(In this example, the power has the key combination of `key.attack` -> `key.attack`, meaning that you'll press the Left Mouse Button (or whatever button `key.attack` is mapped to) twice)

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
                }
            }
        ]
    }
}
```



Once that's done, we will use the `origins:and` meta action type inside both `if_action` and `else_action` object fields.

Inside the `actions` object array inside the `if_action` object, we'll add a new object that will use the `origins:execute_command` entity action type that would call the `origins-kombo:api/cast_success` function via the `/function` command. This is to indicate that the _"kombo"_ casting has succeed. We can then add our own entity action objects afterwards.

Inside the `actions` object array inside the `else_action` object, we'll add a new object that will use the `origins:execute_command` entity action type that would call the `origins-kombo:api/cast_fail` function via the `/function` command. This is to indicate that the _"kombo"_ **** casting has failed. We can then add our own entity action objects afterwards.

Here's how the example would look like now:

(In this example, it will execute a `/say casted SIMPLE Kombo!` command if the player has casted the correct key combination pattern)

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
                            "command": "say casted SIMPLE Kombo!"
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
    }
}
```



Now everything should be almost complete! We just need to add a condition in the power's `condition` entity condition object so that the power won't activate in the first tick the power has been granted.

To make it only execute if the player has reached its max key combination, we will use the `origins:command` entity condition type and check if the player has the `origins-kombo.max_combo_reached` tag with the `/execute if entity` command, like so:

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
                            "command": "say casted SIMPLE Kombo!"
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
