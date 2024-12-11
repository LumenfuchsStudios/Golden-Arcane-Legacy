# No nearby woof, exit.
execute unless entity @n[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, distance=..32] run return run tellraw @s { "text": "No Werewoof entity was found.", "color": "red" }


# Revert from potential transformation
execute as @n[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, distance=..32] if entity @s[tag=goldark.path_transformed] at @s run function goldark:paths/werewoof/morph/revert

# Display audiovisual feedback
execute at @n[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, distance=..32] run particle end_rod ~ ~0.5 ~ .1 .2 .1 0.1 30
execute at @n[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, distance=..32] run playsound entity.zombie_villager.converted neutral @a[distance=..16] ~ ~ ~ 1 0.8

# Apply effects
effect give @n[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, distance=..32] weakness 12 0 false
effect give @n[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, distance=..32] glowing 7 0 false

# Remove tag, no longer a woof
tag @n[type=!player, type=!#goldark:magic_immune, tag=goldark.paths.werewoof, distance=..32] remove goldark.paths.werewoof