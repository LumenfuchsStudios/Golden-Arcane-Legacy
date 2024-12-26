## * Displays a particle trail and summons a thunderous event upon colliding with the floor.
## * 
## * Last modified: December 25th, 2024 (AydenTFoxx)

# Happy Holidays! owo


## Any

# Teleport to Egg
execute at @n[type=egg, tag=goldark.dummy_magic.thunder_egg, distance=..3] facing entity @p eyes run tp @s ^ ^ ^-2
execute unless entity @n[type=egg, tag=goldark.dummy_magic.thunder_egg, distance=..3] \
        at @n[type=egg, tag=goldark.dummy_magic.thunder_egg, distance=..8] facing entity @p eyes run tp @s ^ ^ ^-2

# Display trail particle
particle electric_spark ~ ~ ~ .05 .05 .05 0.1 5


## Thunderous Egg

# Detect nearby Storms
execute if entity @s[tag=goldark.dummy_magic.thunder_egg_strong] \
        store result score @s goldark.dummy \
        if entity @e[type=#goldark:technical, tag=goldark.dummy_spell.thunder_egg, distance=..128]

# Summon Storm
execute if entity @s[tag=goldark.dummy_magic.thunder_egg_strong] \
        unless entity @n[type=egg, tag=goldark.dummy_magic.thunder_egg, distance=..3] \
        unless score @s goldark.dummy >= #goldark_storm_cloud_limit goldark.dummy \
        positioned ~ ~8 ~ \
        run return run function goldark:spells/thunder_egg/init_storm

# Fail Storm (too many Storm Clouds nearby)
execute if entity @s[tag=goldark.dummy_magic.thunder_egg_strong, scores={ goldark.dummy=2.. }] \
        unless block ~ ~ ~-1 #goldark:breathable \
        run particle large_smoke ~ ~ ~ .1 .2 .1 0.1 20


## Thunder Egg

# Summon lightning
execute unless entity @n[type=egg, tag=goldark.dummy_magic.thunder_egg, distance=..3] \
        run function goldark:spells/thunder_egg/summon_thunder