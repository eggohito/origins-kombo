---
title: Lantern Load Integration
date: 2021-10-19
---
#   Lantern Load Integration

##  Soft-dependency

To ensure that your datapack loads *after* the `origins-kombo` datapack library, you would add your load function in the [`#load:post_load`]("`data/load/tags/functions/post_load.mcfunction`") after copying the `minecraft` and `load` folders from the Lantern Load repository, like so:

```json
{
    "values": [
        "<namespace>:path/to/function"
    ]
}
```
* `<namespace>` being the namespace folder you're using. <br>
(e.g: `data/example` --> `example:*`)

* `path/to/function` being your load function. <br>
(e.g: `data/example/functions/private/load.mcfunction` --> `example:private/load`)

##  Hard-dependency

If you want your datapack to use the `origins-kombo` library as a hard-dependency, you can check for the score of the `origins-kombo` score holder in the `load.status` (or `load`, if you're using 1.16.x) objective, like so:

```mcfunction
#   Check if the version of the currently-installed `origins-kombo` library is 2.2.0 or higher
execute if score origins-kombo load.status matches 220.. run <command>

#   Check if the version of the currently-installed `origins-kombo` library is NOT 2.2.0 or higher.
execute unless score origins-kombo load.status matches 220.. run <command>
```
* `<command>` being the commands that you want to run.