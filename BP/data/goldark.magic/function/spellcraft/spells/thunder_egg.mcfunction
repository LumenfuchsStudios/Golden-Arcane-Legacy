## * Creates a Thunder Egg with the magic Cauldron.
## * 
## * Last modified: February 13th, 2025 (AydenTFoxx)


# Create Thunder Egg
summon item ~ ~ ~ { \
    Item: { \
        id: "egg", \
        components: { \
            item_name: "{ \"text\": \"Thunder Egg\" }", \
            lore: [ "{ \"text\": \"Contains a volatile electrical discharge. Beware!\", \"color\": \"gray\", \"italic\": false }" ], \
            rarity: "uncommon", \
            custom_data: { \
                "goldark.items.thunder_egg": true \
            } \
        } \
    }, \
    Motion: [ 0.0d, 0.3d, 0.0d ] \
}


# Display audiovisual feedback
playsound entity.lightning_bolt.thunder block @a[distance=..16] ~ ~ ~ 0.8 0.5

particle enchant ~ ~1 ~ 0.1 0.1 0.1 1 20
particle end_rod ~ ~ ~ 0.0 0.0 0.0 0.2 12


# Remove ingredients
kill @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:egg", count: 1 } }, distance=..2]
kill @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:copper_ingot", count: 1 } }, distance=..2]
kill @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:gold_nugget", count: 1 } }, distance=..2]