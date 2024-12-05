# No nearby normie, exit.
execute unless entity @n[type=!player, type=!#goldark:magic_immune, tag=!goldark.paths.werewoof, distance=..32] run return run tellraw @s { "text": "No entity was found.", "color": "red" }


# Display audiovisual feedback
execute at @n[type=!player, type=!#goldark:magic_immune, tag=!goldark.paths.werewoof, distance=..32] run particle minecraft:soul_fire_flame ~ ~0.5 ~ .1 .2 .1 0.05 30
execute at @n[type=!player, type=!#goldark:magic_immune, tag=!goldark.paths.werewoof, distance=..32] run playsound entity.wolf.growl neutral @a[distance=..16] ~ ~ ~ 1 0.7

# Add tag, now is Woof
tag @n[type=!player, type=!#goldark:magic_immune, tag=!goldark.paths.werewoof, distance=..32] add goldark.paths.werewoof