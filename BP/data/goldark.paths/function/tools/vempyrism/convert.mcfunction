## * Converts the calling entity into a Vempyre.
## * 
## * Last modified: January 28th, 2025 (AydenTFoxx)


# You be Pyre, exit.
execute if entity @s[tag=goldark.paths.vempyre] run return run tellraw @s { "text": "You are already a Vempyre.", "color": "red" }


# Display audiovisual feedback
particle minecraft:soul_fire_flame ~ ~0.5 ~ .1 .2 .1 0.05 20 force
playsound entity.ghast.hurt hostile @a[distance=..256] ~ ~ ~ 0.8 0 0.2

# Grant root advancement "Path: Vempyre"
advancement grant @s[type=player] only goldark.paths:paths/vempyre/root


# Set Path Level
scoreboard players set @s goldark.path_level.vempyre 1

# Add tag, now is Pyre
tag @s add goldark.paths.vempyre