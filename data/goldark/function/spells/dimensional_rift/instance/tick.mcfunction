## # AydenTFoxx @ September 23rd - 25th, 2024

# * Tick-based behavior for Dimensional Rifts.
# * Since most functions are actually triggered by advancements, this simply runs Rifts' ambient particles.

# ? Run by: Armor Stand [tag: goldark.dimensional_rift]


scoreboard players add @s goldark.ability_clock 1

execute if score @s goldark.ability_clock matches 1 run particle portal ~ ~0.5 ~ 0.0 0.0 0.0 0.5 7

execute if score @s goldark.ability_clock matches 10 run particle end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0.01 3

scoreboard players set @s[scores={ goldark.ability_clock=15.. }] goldark.ability_clock 0


particle soul_fire_flame ~ ~0.5 ~ 0.01 0.01 0.01 0.02 2
particle soul_fire_flame ^ ^ ^1 0.0 0.0 0.0 0.01 1

execute if entity @s[tag=goldark.dimensional_rift.connect] run particle minecraft:flame ^ ^1.5 ^ 0.0 0.0 0.0 0.025 2 force

teleport @s ~ ~ ~ ~12 ~


execute if entity @n[type=item, nbt={ Item: { id: "minecraft:name_tag" } }, distance=..1] run data modify entity @s CustomName set from entity @n[type=item, distance=..1] Item.components.minecraft:custom_name

execute as @n[type=item, nbt={ Item: { id: "minecraft:name_tag" } }, distance=..1] at @s run particle witch ~ ~ ~ .1 .1 .1 .5 10 force

execute as @n[type=item, nbt={ Item: { id: "minecraft:name_tag" } }, distance=..1] at @s run kill @s