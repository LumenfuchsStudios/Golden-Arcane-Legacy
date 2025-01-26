## * Updates a scarebow entity's behavior.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Remove scarebow if Target block is destroyed
execute unless block ~ ~-1 ~ target run function goldark.magic:magic/scarebow/destroy

# Convert to Jack o' Lantern if torch is present
execute if block ~ ~ ~ #goldark:luminous unless entity @s[tag=goldark.scarecrow.jack_o_lantern] run data modify entity @s item.id set value "minecraft:jack_o_lantern"
execute if block ~ ~ ~ #goldark:luminous unless entity @s[tag=goldark.scarecrow.jack_o_lantern] run tag @s add goldark.scarecrow.jack_o_lantern

execute unless block ~ ~ ~ #goldark:luminous if entity @s[tag=goldark.scarecrow.jack_o_lantern, tag=!goldark.scarecrow.perma_jol] run data modify entity @s item.id set value "minecraft:carved_pumpkin"
execute unless block ~ ~ ~ #goldark:luminous if entity @s[tag=goldark.scarecrow.jack_o_lantern, tag=!goldark.scarecrow.perma_jol] run tag @s remove goldark.scarecrow.jack_o_lantern


# Reset rotation
execute if score @s goldark.dummy matches 1 run tp @s ~ ~ ~ -90.0 0.0
execute if score @s goldark.dummy matches 2 run tp @s ~ ~ ~ 90.0 0.0
execute if score @s goldark.dummy matches 3 run tp @s ~ ~ ~ 0.0 0.0
execute if score @s goldark.dummy matches 4 run tp @s ~ ~ ~ 180.0 0.0


# Target projectiles nearby
execute if entity @n[type=#goldark:projectile, distance=..16] \
        run function goldark.magic:magic/scarebow/target_projectile