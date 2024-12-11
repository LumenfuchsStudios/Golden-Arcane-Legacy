# No nearby (non-transformed) woof, exit.
execute unless entity @n[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, tag=!goldark.path_transformed, distance=..128] run return run tellraw @s { "text": "No Werewoof entity was found.", "color": "red" }


# Display audio feedback (transformation already has plenty visuals)
execute at @e[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, tag=!goldark.path_transformed, distance=..128] run playsound entity.wolf.ambient neutral @a[distance=..16] ~ ~ ~ 1 0.8

# Transform to Wolf morph
execute as @e[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, tag=!goldark.path_transformed, distance=..128] at @s run function goldark:paths/werewoof/morph/transform