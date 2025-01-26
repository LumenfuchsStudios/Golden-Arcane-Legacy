## * Creates an Essence of Purity.
## * 
## * Last modified: January 25th, 2025 (AydenTFoxx)


# Create essence
summon item ~ ~ ~ { \
    Item: { \
        id: "white_dye", \
        components: { \
            enchantment_glint_override: true, \
            rarity: uncommon, \
            item_name: '{ "text": "Essence of Purity" }', \
            lore: [ '{ "text": "\\"Purify thine enemies, purify thy soul.\\"", "color": "gray", "italic": false }' ], \
            consumable: { animation: "bow", consume_seconds: 1.0, has_consume_particles: false, sound: "block.conduit.ambient.short" }, \
            custom_data: { "goldark.spells.essence_white": true } \
        } \
    }, \
    Motion: [ 0.0d, 0.3d, 0.0d ], \
    PickupDelay: 8s \
}

# Display audiovisual feedback
playsound block.amethyst_block.chime block @a[distance=..16] ~ ~ ~ 0.8 1.2

particle enchant ~ ~1 ~ 0.1 0.1 0.1 0.5 16


# Remove ingredients
kill @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:glowstone_dust", count: 1 } }, distance=..2]
kill @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:lily_of_the_valley", count: 1 } }, distance=..2]