## * The pinnacle of using scarecrow's code as a base, pushes away any nearby projectile to the scarebow.
## ? May not work properly for particularly aggressive projectiles (e.g. light-speed arrows)
## * 
## * Last modified: December 21st, 2024 (AydenTFoxx)


# Look at target
tp @s ~ ~ ~ facing entity @n[type=#impact_projectiles, distance=..16] eyes

# Clamp rotation
execute store result entity @s Rotation[1] float 0.5 run data get entity @s Rotation[1]


# Repel target
execute as @n[type=#impact_projectiles, distance=..16] store result entity @s Motion[0] double 0.5 run data get entity @s Motion[0]
execute as @n[type=#impact_projectiles, distance=..16] store result entity @s Motion[2] double 0.5 run data get entity @s Motion[2]

execute as @n[type=#impact_projectiles, distance=..8] store result entity @s Motion[0] double 0.1 run data get entity @s Motion[0]
execute as @n[type=#impact_projectiles, distance=..8] store result entity @s Motion[2] double 0.1 run data get entity @s Motion[2]


# Repel target (trident on ground or wall)
execute as @n[type=trident, distance=..16] positioned as @s anchored feet rotated ~ 0.0 \
        if data entity @s { Motion: [ 0.0, 0.0, 0.0 ] } if block ^ ^ ^1 #goldark:breathable run tp @s ^ ^ ^0.2

execute as @n[type=trident, distance=..16] positioned as @s anchored feet rotated ~ 0.0 \
        if data entity @s { Motion: [ 0.0, 0.0, 0.0 ] } unless block ^ ^ ^1 #goldark:breathable run tp @s ^ ^0.2 ^


# Remove target (arrow on ground or wall)
execute as @n[type=arrow, distance=..16] at @s if data entity @s { Motion: [ 0.0, 0.0, 0.0 ] } run particle item{ item: "arrow" } ~ ~0.3 ~ 0.1 0.1 0.1 0.05 5
execute as @n[type=arrow, distance=..16] at @s if data entity @s { Motion: [ 0.0, 0.0, 0.0 ] } run kill @s


# Display visual feedback
execute at @n[type=#impact_projectiles, distance=..16] run particle smoke ~ ~ ~ .1 .1 .1 0.01 3