## * Updates a scarecrow entity's behavior.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Remove scarecrow if Hay Bale is destroyed
execute unless block ~ ~-1 ~ hay_block run function goldark-magic:magic/scarecrow/destroy

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


# Stare players when on the Abyss dimension
#execute if dimension goldark:abyss if entity @p[distance=..12, gamemode=!spectator] run tp @s ~ ~ ~ facing entity @p[distance=..12, gamemode=!spectator] eyes

#execute if dimension goldark:abyss if entity @p[distance=..12, gamemode=!spectator] store result entity @s Rotation[0] float 1.0 run data get entity @s Rotation[0]
#execute if dimension goldark:abyss if entity @p[distance=..12, gamemode=!spectator] store result entity @s Rotation[1] float 0.25 run return run data get entity @s Rotation[1]

# Otherwise, target hostile mobs nearby
execute if entity @n[type=!#goldark:magic_immune, predicate=goldark:entity/is_hostile, distance=..20] \
        run function goldark-magic:magic/scarecrow/target_mob