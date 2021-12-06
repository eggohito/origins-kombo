# Integrating Lantern Load

### Soft-dependency

To ensure that your datapack will load _after_ the `origins-kombo` datapack library, you would add your load function inside the `#load:post_load` (`data/load/tags/functions/post_load.json`) function tag after copying the `minecraft` and `load` folders from the Lantern Load repository, like so:

{% tabs %}
{% tab title="Code" %}
```json
{
    "values": [
        "namespace:path/to/function"
    ]
}
```

* **`namespace`** being the folder you're using inside the `data` folder of your datapack.
  * e.g: `data/example/...` --> `example:...`&#x20;
* **`path/to/function`** being the function that you're using as a load function.
  * e.g: `data/example/functions/load.mcfunction` --> `example:load`
{% endtab %}
{% endtabs %}

###

### Hard-dependency

If you want your datapack to depend on the `origins-kombo` datapack library, you can either check for the scores of the `origins-kombo.x` score holders in the `o-k.main` scoreboard objective or check for the values of the `root.semver.x` NBT paths from the `origins-kombo:` storage.

(`x` can be `major`, `minor` or `patch`)

{% tabs %}
{% tab title="Code" %}
```haskell
# Check if the version of the `origins-kombo` datapack library is at least 3.1.x
execute if score origins-kombo.major matches 3 if score origins-kombo.minor matches 1.. run <command>

# The same as above, but by checking the NBT paths instead
execute if data storage origins-kombo: root.semver{major: 3, minor: 1} run <command>
```

* **`<command>`** being the command you want to run
{% endtab %}
{% endtabs %}
