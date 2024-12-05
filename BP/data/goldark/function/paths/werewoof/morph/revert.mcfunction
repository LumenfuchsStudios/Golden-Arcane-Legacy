## * Returns a transformed Werewoof back to their human(?) form.
## * 
## * Last modified: December 4th, 2024 (AydenTFoxx)


# Return gamemode (Player)
execute if entity @s[type=player] run function goldark:tools/reset_gamemode

# Revert to Mob (non-Player)
execute if entity @s[type=!player] run effect clear @s invisibility
execute if entity @s[type=!player] run data merge entity @s { Invulnerable: 0b, Silent: 0b, NoAI: 0b }
execute if entity @s[type=!player] run team leave @s


# Apply effects
effect give @s hunger 8 0 false
effect give @s regeneration 3 0 false

# Remove Wolf (if it wasn't already)
execute if entity @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..2] run tag @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..2] add goldark.temp.dummy_morph_remove
execute if entity @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..2] run data merge entity @n[type=wolf, tag=goldark.temp.dummy_morph_remove, distance=..2] { Silent: 1b, Health: 0, DeathTime: 20s }


# Display visual feedback
playsound particle.soul_escape player @a[distance=..8] ~ ~ ~ 1 0.8 0.3
particle smoke ~ ~0.5 ~ .2 .4 .2 0.05 30

# Remove tag
tag @s remove goldark.path_transformed