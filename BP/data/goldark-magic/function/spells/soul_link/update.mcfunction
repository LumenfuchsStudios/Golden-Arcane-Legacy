## * Runs all behaviors of Soul Shards as items.
## ? Do note this item is rather resource intensive, and should be used sparingly.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Get score
#execute unless score @s goldark.dummy matches 1.. store result score @s goldark.dummy run data get entity @s Item.components.minecraft:custom_data.goldark.soul_link.target


# Move target
execute unless block ~ ~-1 ~ #goldark:misc/dangerous run function goldark-magic:spells/soul_link/tools/move_target with entity @s Item.components.minecraft:custom_data.goldark.soul_link

# Harm target
execute if block ~ ~ ~ #goldark:misc/dangerous run function goldark-magic:spells/soul_link/tools/harm_target with entity @s Item.components.minecraft:custom_data.goldark.soul_link

execute if block ~ ~-1 ~ magma_block run function goldark-magic:spells/soul_link/tools/harm_target with entity @s Item.components.minecraft:custom_data.goldark.soul_link

# Teleport to target
execute at @p[predicate=goldark:player_input/sneak, predicate=goldark:player_input/sprint, distance=..3] run function goldark-magic:spells/soul_link/tools/teleport_to_target with entity @s Item.components.minecraft:custom_data.goldark.soul_link