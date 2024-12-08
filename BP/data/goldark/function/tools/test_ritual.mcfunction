#? Rituals are separated by Phases; Code is ran continuously until it is ready to progress to the next.
#? The final Phase should call the ending Function for cleanup and conclusion.

#? Code assumes to be run by a Dummy entity -- henceforth referred to as Anchor;
#? The Anchor should NEVER move, unless the Altar structure itself does as well. It is the spatial representation of the Altar's focus point.


# Increment Clock (for pacing)
scoreboard players add @s[tag=!goldark.tools.pause_clock] goldark.ability_clock 1


execute if score @s goldark.ability_clock matches ..200 run particle enchant ~ ~0.5 ~ 0.0 0.0 0.0 0.5 5


execute if score @s goldark.ability_clock matches 100 run summon marker ~ ~4 ~ { Tags: [ goldark.dummy_particle.star_dust ] }
execute if score @s goldark.ability_clock matches 120 run summon marker ~ ~4 ~ { Tags: [ goldark.dummy_particle.star_dust ] }
execute if score @s goldark.ability_clock matches 140 run summon marker ~ ~4 ~ { Tags: [ goldark.dummy_particle.star_dust ] }
execute if score @s goldark.ability_clock matches 160 run summon marker ~ ~4 ~ { Tags: [ goldark.dummy_particle.star_dust ] }

tag @s[scores={ goldark.ability_clock=200 }] add goldark.tools.pause_clock


execute at @n[type=marker, tag=goldark.dummy_particle.star_dust, distance=..4, limit=4] run particle end_rod ^ ^ ^1 0.5 -0.5 0.5 0.1 0

execute as @n[type=marker, tag=goldark.dummy_particle.star_dust, distance=0.5..4, limit=4] at @s run tp @s ~ ~-0.05 ~
execute as @n[type=marker, tag=goldark.dummy_particle.star_dust, distance=..4, limit=4] at @s run tp @s ~ ~ ~ ~10 ~


execute store result score @s goldark.dummy if entity @n[type=marker, tag=goldark.dummy_particle.star_dust, limit=4, distance=..0.5]

execute if score @s goldark.dummy matches 4 run summon marker ~ ~ ~ { Tags: [ goldark.dummy_particle.star_cloud ] }

execute if score @s goldark.dummy matches 4 run tag @s remove goldark.tools.pause_clock

execute if score @s goldark.dummy matches 4 run kill @n[type=marker, tag=goldark.dummy_particle.star_dust, limit=4, distance=..0.5]

execute if score @s goldark.dummy matches 4 run particle end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0.1 20
execute if score @s goldark.dummy matches 4 run particle flash ~ ~0.5 ~ 0.1 0.1 0.1 1 1

execute if score @s goldark.dummy matches 4 run playsound block.amethyst_block.chime neutral @a[distance=..16] ~ ~ ~ 1 1.2

scoreboard players reset @s[scores={ goldark.dummy=4 }] goldark.dummy


execute as @n[type=marker, tag=goldark.dummy_particle.star_cloud, distance=..5] at @s run particle white_smoke ~ ~ ~ 0.1 0.1 0.1 0.05 10
execute as @n[type=marker, tag=goldark.dummy_particle.star_cloud, distance=..5] at @s run particle instant_effect ^ ^ ^1 0.3 0.1 0.3 0.1 1
execute as @n[type=marker, tag=goldark.dummy_particle.star_cloud, distance=..5] at @s run particle instant_effect ^ ^ ^-1 0.3 0.1 0.3 0.1 1


execute as @n[type=marker, tag=goldark.dummy_particle.star_cloud, distance=..3] at @s run tp @s ~ ~0.05 ~ ~ ~10
execute as @n[type=marker, tag=goldark.dummy_particle.star_cloud, distance=..5] at @s run tp @n[type=item, nbt={ Item: { id: "minecraft:lapis_lazuli" } }, distance=..5] @s


execute as @n[type=marker, tag=goldark.dummy_particle.star_cloud, distance=3..5] at @s if predicate goldark:misc/random_25 run summon experience_orb ~ ~ ~ { Value: 1 }

execute as @n[type=marker, tag=goldark.dummy_particle.star_cloud, distance=3..5] at @s if predicate goldark:misc/random_33 run particle end_rod ~ ~ ~ 1.0 1.0 1.0 0.1 1

execute as @n[type=marker, tag=goldark.dummy_particle.star_cloud, distance=3..5] at @s if predicate goldark:misc/random_10 run playsound block.amethyst_block.resonate neutral @a[distance=..16] ~ ~ ~ 1 1.2


execute if score @s goldark.ability_clock matches 550..600 as @n[type=marker, tag=goldark.dummy_particle.star_cloud, distance=3..5] at @s run particle totem_of_undying ~ ~ ~ 0 0.1 0 0.5 0
execute if score @s goldark.ability_clock matches 580..600 as @n[type=marker, tag=goldark.dummy_particle.star_cloud, distance=3..5] at @s run summon experience_orb ~ ~ ~ { Value: 10 }

execute if score @s goldark.ability_clock matches 600 as @n[type=marker, tag=goldark.dummy_particle.star_cloud, distance=3..5] at @s run particle explosion_emitter ~ ~ ~ 0.1 0.1 0.1 1.0 1
execute if score @s goldark.ability_clock matches 600 as @n[type=marker, tag=goldark.dummy_particle.star_cloud, distance=3..5] at @s run playsound block.beacon.deactivate neutral @a[distance=..16] ~ ~ ~ 1 0.8

execute if score @s goldark.ability_clock matches 600 run kill @n[type=marker, tag=goldark.dummy_particle.star_cloud, distance=3..5]

execute if score @s goldark.ability_clock matches 600 run scoreboard players reset @s goldark.ability_clock