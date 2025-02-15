## * Creates a "Pigtest" (pigtest_satellite) with the magic Cauldron.
## * 
## ? Requires Creative/cheats-only items for its recipe.
## * 
## * Last modified: February 13th, 2025 (AydenTFoxx)


# Create Pigtest
summon item ~ ~ ~ { \
    Item: { \
        id: "snowball", \
        components: { \
            item_name: '{ "text": "Pig", "color": "aqua" }', \
            lore: [ '{ "text": "???????", "color": "gray", "italic": false }' ], \
            rarity: "rare", \
            enchantment_glint_override: true, \
            custom_data: { goldark.items.pig_strong: true }, \
            use_cooldown: { seconds: 1, cooldown_group: "goldark:pigtest" } \
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
kill @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:pig_spawn_egg", count: 1 } }, distance=..2]
kill @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:creeper_head", count: 1 } }, distance=..2]
kill @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:glowstone", count: 1 } }, distance=..2]