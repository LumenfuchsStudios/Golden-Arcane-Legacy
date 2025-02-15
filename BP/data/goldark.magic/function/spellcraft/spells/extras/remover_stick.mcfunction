## * Creates a Remover Stick with the magic Cauldron.
## * 
## ? Requires Creative/cheats-only items for its recipe.
## * 
## * Last modified: February 13th, 2025 (AydenTFoxx)


# Create Remover Stick
summon item ~ ~ ~ { \
    Item: { \
        id: "debug_stick", \
        components: { \
            attribute_modifiers: { modifiers: [ { slot: "mainhand", id: "goldark:remover_stick/armor", amount: 20.0f, operation: "add_multiplied_total", type: "armor" }, { slot: "mainhand", id: "goldark:remover_stick/armor_toughness", amount: 200.0f, operation: "add_multiplied_total", type: "armor_toughness" }, { slot: "mainhand", "id": "goldark:remover_stick/attack_speed", amount: 2.0f, operation: "add_multiplied_base", type: "attack_speed" } ], show_in_tooltip: false }, \
            custom_data: { goldark.items.remover_stick: true }, \
            item_name: '{ "text": "Remover Stick", "color": "red" }', \
            enchantment_glint_override: true, \
            lore: [ '{ "text": "\\"Ban Hammer\'s lesser cousin.\\"", "color": "gray", "italic": false }' ] \
        } \
    }, \
    Motion: [ 0.0d, 0.5d, 0.0d ] \
}


# Display audiovisual feedback
playsound block.end_portal.spawn block @a[distance=..16] ~ ~ ~ 0.8 0.5

particle enchant ~ ~1 ~ 0.1 0.1 0.1 1 24
particle end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0.1 12
particle explosion ~ ~ ~ 0.0 0.0 0.0 1.0 1


# Remove ingredients
kill @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:debug_stick", count: 1 } }, distance=..2]
kill @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:barrier", count: 1 } }, distance=..2]
kill @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:gold_ingot", count: 1 } }, distance=..2]