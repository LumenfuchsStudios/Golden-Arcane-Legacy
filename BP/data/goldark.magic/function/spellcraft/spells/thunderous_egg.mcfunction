## * Creates a Thunderous Egg with the magic Cauldron.
## * 
## * Last modified: February 15th, 2025 (AydenTFoxx)


# Create Thunder Egg
summon item ~ ~ ~ { \
    Item: { \
        id: "egg", \
        components: { \
            enchantment_glint_override: true, \
            item_name: "{ \"text\": \"Thunderous Egg\" }", \
            lore: [ "{ \"text\": \"Contains an unstable, furious storm trapped within.\", \"color\": \"gray\", \"italic\": false }", "{ \"text\": \"This will prove to be a terrible idea.\", \"italic\": false }" ], \
            rarity: "rare", \
            custom_data: { \
                "goldark.items.thunder_egg_strong": true \
            } \
        } \
    }, \
    Motion: [ 0.0d, 0.5d, 0.0d ] \
}


# Display audiovisual feedback
playsound entity.lightning_bolt.thunder block @a[distance=..16] ~ ~ ~ 0.8 0.5
playsound ambient.basalt_deltas.mood block @a[distance=..16] ~ ~ ~ 0.8 1.2

particle enchant ~ ~1 ~ 0.1 0.1 0.1 1 20
particle end_rod ~ ~ ~ 0.0 0.0 0.0 0.2 16


# Remove ingredients
kill @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:egg", count: 1 } }, distance=..2]
kill @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:wither_rose", count: 1 } }, distance=..2]
kill @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:gold_ingot", count: 1 } }, distance=..2]