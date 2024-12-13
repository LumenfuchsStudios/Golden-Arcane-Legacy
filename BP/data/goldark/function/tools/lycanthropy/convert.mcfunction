# You be Woof, exit.
execute if entity @s[tag=goldark.paths.werewoof] run return run tellraw @s { "text": "You are already a Werewoof.", "color": "red" }


# Display audiovisual feedback
particle minecraft:soul_fire_flame ~ ~0.5 ~ .1 .2 .1 0.05 30
playsound entity.wolf.growl neutral @a[distance=..16] ~ ~ ~ 1 0.7

# Grant root advancement "Path: Werewoof"
advancement grant @s[type=player] only goldark:paths/werewoof/root

# Add tag, now is Woof
tag @s add goldark.paths.werewoof