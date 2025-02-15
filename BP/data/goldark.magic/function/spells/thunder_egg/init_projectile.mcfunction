## * Turns the nearest thrown Egg into a Thunder/Thunderous Egg.
## * 
## * Last modified: December 3rd, 2024 (AydenTFoxx)


# Summon Dummy (for collision detection)
execute at @n[type=egg, distance=..3] facing entity @s eyes run summon marker ^ ^ ^-1 { Tags: [ goldark.dummy_magic.thunder_egg ] }

# Tag Eg
tag @n[type=egg, distance=..3] add goldark.dummy_magic.thunder_egg

# Tag Dummy as stronger Eg
execute if score @s goldark.used_item.egg matches 3.. run tag @n[type=#goldark:technical, tag=goldark.dummy_magic.thunder_egg, distance=..3] add goldark.dummy_magic.thunder_egg_strong


# Display audiovisual feedback
playsound block.candle.extinguish player @s ~ ~ ~ 0.8 0.8
particle white_smoke ~ ~0.5 ~ .05 .1 .05 0.01 4

# Reset trigger
scoreboard players reset @s goldark.used_item.egg