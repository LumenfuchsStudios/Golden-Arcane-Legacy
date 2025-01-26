## * Sets the "Target: [Entity]" tag of Soul Shards upon creation.
## * 
## * Last modified: December 14th, 2024 (AydenTFoxx)

## ? MACRO Arguments:
# ? target: The GUID score of the owner of the Soul Link


# Set "Target:" Lore
$summon text_display ~ ~ ~ { "text": '{ "translate": "Target: %s (#%s)", "italic": false, "color": "white", "with": [ { "selector": "@n[type=!#goldark:technical, scores={ goldark.guid=$(target) }]" }, { "score": { "name": "@n[type=!#goldark:technical, scores={ goldark.guid=$(target) }]", "objective": "goldark.guid" } } ] }', alignment: "center", Tags: [ goldark.dummy_text.soul_link_tooltip, goldark.dummy_text.soul_link.target ] }

data modify entity @s Item.components.minecraft:lore append string entity @n[type=text_display, tag=goldark.dummy_text.soul_link.target, distance=..1] text


# Remove Lore holders
kill @n[type=text_display, tag=goldark.dummy_text.soul_link_tooltip, distance=..1, limit=2]