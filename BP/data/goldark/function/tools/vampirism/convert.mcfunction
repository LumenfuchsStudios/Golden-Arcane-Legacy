# You be Pyre, exit.
execute if entity @s[tag=goldark.paths.vempyre] run return run tellraw @s { "text": "You are already a Vempyre.", "color": "red" }


# Display audiovisual feedback
particle minecraft:soul_fire_flame ~ ~0.5 ~ .1 .2 .1 0.05 30
playsound entity.ghast.hurt neutral @a[distance=..16] ~ ~ ~ 0.8 0.7

# Grant root advancement "Path: Vempyre"
advancement grant @s[type=player] only goldark:paths/vempyre/root

# Add tag, now is Pyre
tag @s add goldark.paths.vempyre