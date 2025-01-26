## * Pushes away and prevents hostile mobs from approaching the scarecrow.
## ? May not work properly for particularly aggressive mobs (e.g. Wolves)
## * 
## * Last modified: January 24th, 2025 (AydenTFoxx)


# Look at target
tp @s ~ ~ ~ facing entity @n[type=!#goldark:magic_immune, predicate=goldark:entity/is_hostile, distance=..20] eyes

# Clamp rotation
execute unless block ~ ~ ~ #goldark:soul_light unless block ~ ~ ~ redstone_torch \
        store result entity @s Rotation[0] float 0.85 run data get entity @s Rotation[0]
execute store result entity @s Rotation[1] float 0.5 run data get entity @s Rotation[1]


# Slow target
effect give @n[type=!#goldark:magic_immune, predicate=goldark:entity/is_hostile, distance=..16] slowness 1 1 false

# Move target back
execute as @n[type=!#goldark:magic_immune, predicate=goldark:entity/is_hostile, distance=..16] positioned as @s anchored feet \
        rotated ~ 0.0 if block ^ ^ ^1 #goldark:transparent run tp @s ^ ^ ^0.1

execute as @n[type=!#goldark:magic_immune, predicate=goldark:entity/is_hostile, distance=..12] positioned as @s anchored feet \
        rotated ~ 0.0 if block ^ ^ ^1 #goldark:transparent run tp @s ^ ^ ^0.3

# Harm target (if stuck on a wall)
execute as @n[type=!#goldark:magic_immune, predicate=goldark:entity/is_hostile, distance=..12] positioned as @s anchored feet \
        rotated ~ 0.0 unless block ^ ^ ^-1 #goldark:transparent run damage @s 1 cramming


# Display visual feedback
execute at @n[type=!#goldark:magic_immune, predicate=goldark:entity/is_hostile, distance=..16] run particle angry_villager ~ ~1 ~ .1 .1 .1 1.0 1