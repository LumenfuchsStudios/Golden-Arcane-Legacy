## * Creates a Soul Link with the magic Cauldron.
## * 
## * Last modified: February 13th, 2025 (AydenTFoxx)


# Create Soul Link
function goldark.magic:spells/soul_link/create


# Display audiovisual feedback
playsound entity.lightning_bolt.thunder block @a[distance=..16] ~ ~ ~ 0.8 0.5
playsound ambient.soul_sand_valley.mood block @a[distance=..16] ~ ~ ~ 0.8 0.5

particle enchant ~ ~1 ~ 0.1 0.1 0.1 1 20
particle explosion ~ ~ ~ 0.0 0.0 0.0 1.0 1


# Remove ingredients
kill @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:quartz", count: 1 } }, distance=..2]
kill @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:gold_ingot", count: 1 } }, distance=..2]
kill @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:soul_sand", count: 1 } }, distance=..2]