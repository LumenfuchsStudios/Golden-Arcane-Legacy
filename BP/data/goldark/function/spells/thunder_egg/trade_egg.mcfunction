## * Grants the player a Thunder/ous Egg when said Egg is laid by a Chicken.
## * Technically also works by dropping it on the chicken.
## * 
## * Last modified: December 11th, 2024


# Revoke trigger
advancement revoke @s only goldark:internal/chicken_laid_egg

# Ignore if no chicken around -- or if RNG roll fails
execute unless entity @n[type=chicken, distance=..2] \
        unless predicate goldark:misc/random_10 run return fail


# Add tag for guaranteeing Thunderous Egg (if Egg was a Thunder Egg)
execute if data entity @n[type=item, distance=..1.5] Item.components.minecraft:custom_data.goldark.items.thunder_egg \
        run tag @s add goldark.temp.guarantee_thunder_egg_strong

# Remove Egg
clear @s egg 1


# Grant Thunderous Egg
execute if predicate goldark:misc/random_10 as @s[tag=!goldark.temp.guarantee_thunder_egg_strong] run return run function goldark:debug/give/thunderous_egg

execute as @s[tag=goldark.temp.guarantee_thunder_egg_strong] run function goldark:debug/give/thunderous_egg
execute as @s[tag=goldark.temp.guarantee_thunder_egg_strong] run return run tag @s remove goldark.temp.guarantee_thunder_egg_strong

# Grant Thunder Egg
execute as @p run function goldark:debug/give/thunder_egg