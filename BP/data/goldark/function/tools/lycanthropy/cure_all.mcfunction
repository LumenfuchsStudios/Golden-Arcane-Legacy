# No nearby woof, exit.
execute unless entity @n[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, distance=..128] run return run tellraw @s { "text": "No Werewoof entity was found.", "color": "red" }


# Revert from potential transformation
execute as @e[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, distance=..128] if entity @s[tag=goldark.path_transformed] at @s run function goldark:paths/werewoof/morph/revert

# Display audiovisual feedback
execute at @e[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, distance=..128] run particle end_rod ~ ~0.5 ~ .1 .2 .1 0.1 30
execute at @e[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, distance=..128] run playsound entity.zombie_villager.converted neutral @a[distance=..16] ~ ~ ~ 1 0.8

# Apply effects
effect give @e[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, distance=..128] weakness 12 0 false
effect give @e[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, distance=..128] glowing 7 0 false

# Remove tag, no longer a woof
tag @e[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, distance=..128] remove goldark.paths.werewoof