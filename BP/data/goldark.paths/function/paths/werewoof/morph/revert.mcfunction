## * Returns a transformed Werewoof back to their human(?) form.
## * 
## * Last modified: February 11th, 2025 (AydenTFoxx)


# Remove tag
tag @s remove goldark.path_transformed

# Return gamemode (Player)
execute if entity @s[type=player] run function goldark:tools/reset_gamemode

# Revert to Mob (non-Player)
execute if entity @s[type=!player] run effect clear @s invisibility
execute if entity @s[type=!player] run data merge entity @s { Invulnerable: 0b, Silent: 0b, NoAI: 0b }
execute if entity @s[type=!player] run team leave @s


# Apply effects
effect give @s[scores={ goldark.path_level.werewoof=1 }] hunger 8 0
effect give @s[scores={ goldark.path_level.werewoof=1 }] regeneration 3 0
effect give @s[scores={ goldark.path_level.werewoof=2.. }] regeneration 5 1

# Move player up (to avoid no-clip)
execute unless block ~ ~-1 ~ #goldark:breathable run tp @s ~ ~0.5 ~


# Remove Wolf (if it wasn't already)
execute if score @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..2] goldark.guid = @s goldark.guid run tag @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..2] add goldark.temp.dummy_morph_remove
execute if score @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..2] goldark.guid = @s goldark.guid run data merge entity @n[type=wolf, tag=goldark.temp.dummy_morph_remove, distance=..2] { Silent: 1b, Health: 0, DeathTime: 20s }

# Display visual feedback
playsound particle.soul_escape player @a[distance=..8] ~ ~ ~ 1 0.8 0.3
particle smoke ~ ~0.5 ~ .2 .4 .2 0.05 30