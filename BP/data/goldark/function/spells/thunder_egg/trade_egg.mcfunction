## * Grants the player a Thunder/ous Egg when said Egg is laid by a Chicken.
## * Technically also works by dropping it on the chicken.
## * 
## * Last modified: December 27th, 2024


# Revoke trigger
advancement revoke @s only goldark:internal/collect_egg


# Ignore if guarantee function is yet to run (MC-202706)
execute if entity @s[advancements={ goldark:internal/collect_egg_strong=true }] run return fail

# Ignore if no chicken around
execute unless entity @n[type=chicken, distance=..2] run return fail

# Ignore if RNG fails -- Ignored if "Guarantee Thunder Egg" flag is present
execute unless entity @s[tag=goldark.temp.guarantee_thunder_egg_strong] \
        unless predicate goldark:misc/random_10 run return fail


# Remove Egg
clear @s egg 1


# Grant Thunderous Egg
execute if entity @s[tag=goldark.temp.guarantee_thunder_egg_strong] run function goldark:debug/give/thunderous_egg
execute if entity @s[tag=goldark.temp.guarantee_thunder_egg_strong] run return run tag @s remove goldark.temp.guarantee_thunder_egg_strong

execute if predicate goldark:misc/random_10 run return run function goldark:debug/give/thunderous_egg

# Grant Thunder Egg
function goldark:debug/give/thunder_egg