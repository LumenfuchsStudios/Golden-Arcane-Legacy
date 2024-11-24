## # AydenTFoxx @ September 25th, 2024

# * Runs Heavens' ambient effects, i.e. effects which periodically occur while in the dimension.

# ? Run by: Player [in: goldark:heavens]


# INIT
execute unless score @s goldark.effect_clock matches 1.. run effect give @s levitation 3 0 true
execute unless score @s goldark.effect_clock matches 1.. run effect give @s resistance 5 1 true

execute unless score @s goldark.effect_clock matches 1.. run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #goldark:heavens_terrain
execute unless score @s goldark.effect_clock matches 1.. run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 white_stained_glass keep

execute unless score @s goldark.effect_clock matches 1.. run playsound block.portal.travel neutral @a[distance=..16] ~ ~ ~ 2 1
execute unless score @s goldark.effect_clock matches 1.. run particle explosion_emitter ~ ~ ~ 0.0 0.0 0.0 1 1 normal

# Tick
scoreboard players add @s goldark.effect_clock 1
scoreboard players remove @s[scores={ goldark.ability_clock=1.., goldark.effect_clock=1.. }] goldark.ability_clock 1

# Reset-triggering effects will always be prefixed by 999; Once triggered, they reset "effect_clock" to 0.

execute if score @s goldark.effect_clock matches 1200 if predicate goldark:random_10 \
    unless score @s goldark.ability_clock matches 1.. run function goldark:dimensions/heavens/play_music

execute if score @s goldark.effect_clock matches 2222 if predicate goldark:random_33 run effect give @s absorption infinite 1 true


scoreboard players set @s[scores={ goldark.effect_clock=2400.. }] goldark.effect_clock 1