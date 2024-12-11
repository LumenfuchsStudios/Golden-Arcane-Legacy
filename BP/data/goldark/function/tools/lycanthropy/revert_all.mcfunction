# No nearby transformed Woof, exit.
execute unless entity @n[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, tag=goldark.path_transformed, distance=..128] run return run tellraw @s { "text": "No transformed entity was found.", "color": "red" }


# Display audiovisual feedback
execute at @n[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, tag=goldark.path_transformed, distance=..128] run particle smoke ~ ~0.5 ~ .1 .2 .1 0.1 30
execute at @n[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, tag=goldark.path_transformed, distance=..128] run playsound entity.wolf.whine neutral @a[distance=..16] ~ ~ ~ 0.8 0.8

# Revert from transformation
execute as @n[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, tag=goldark.path_transformed, distance=..128] at @s run function goldark:paths/werewoof/morph/revert