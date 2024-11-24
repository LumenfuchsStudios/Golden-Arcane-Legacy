## # AydenTFoxx @ September 25th, 2024

# * Runs ABYSS' ambient effects, i.e. effects which periodically occur while in the dimension.

# ? Run by: Player [in: goldark:abyss]


# INIT

execute unless score @s goldark.effect_clock matches 1.. run effect give @s levitation 3 0 true
execute unless score @s goldark.effect_clock matches 1.. run effect give @s resistance 5 1 true

execute unless score @s goldark.effect_clock matches 1.. run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #goldark:abyss_terrain
execute unless score @s goldark.effect_clock matches 1.. run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 crying_obsidian keep

execute unless score @s goldark.effect_clock matches 1.. run playsound block.portal.travel neutral @a[distance=..16] ~ ~ ~ 2 1
execute unless score @s goldark.effect_clock matches 1.. run particle explosion_emitter ~ ~ ~ 0.0 0.0 0.0 1 1 normal

# Tick

scoreboard players add @s goldark.effect_clock 1

# Reset-triggering effects will always be prefixed by 999; Once triggered, they reset effect_clock to 0.

execute if score @s goldark.effect_clock matches 400..420 if predicate goldark:random_10 run scoreboard players set @s goldark.effect_clock 9991

execute if score @s goldark.effect_clock matches 500 if predicate goldark:random_33 run playsound ambient.nether_wastes.additions ambient @s ^ ^ ^1 1 0.8 0.8

execute if score @s goldark.effect_clock matches 1200..1210 if predicate goldark:random_25 run scoreboard players set @s goldark.effect_clock 9992

execute if score @s goldark.effect_clock matches 1600 unless predicate goldark:random_25 run scoreboard players set @s goldark.effect_clock 9993

execute if score @s goldark.effect_clock matches 2000 unless predicate goldark:random_10 run summon illusioner ^ ^4 ^-8 { Silent: 1b, Health: 4, Invulnerable: 0b, NoGravity: 0b, Tags: [ goldark.abyss_illusion ] }


execute if score @s goldark.effect_clock matches 9991 run playsound ambient.cave ambient @s ^ ^ ^-1 1 0.6 0.8

execute if score @s goldark.effect_clock matches 9992 run playsound entity.phantom.ambient ambient @s ^ ^4 ^-3 1 0.5

execute if score @s goldark.effect_clock matches 9993 run effect give @s wither 8 1 false
execute if score @s goldark.effect_clock matches 9993 run particle enchanted_hit ~ ~ ~ .1 .1 .1 .5 20 force
execute if score @s goldark.effect_clock matches 9993 run playsound entity.enderman.stare hostile @s ^ ^2 ^-4 1 0.4 0.5

scoreboard players set @s[scores={ goldark.effect_clock=2400.. }] goldark.effect_clock 1