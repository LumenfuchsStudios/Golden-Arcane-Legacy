## * Returns a transformed Werewoof back to their human(?) form.
## * 
## * Last modified: December 1st, 2024 (AydenTFoxx)


# Return gamemode
execute if entity @s[type=player] run function goldark:tools/reset_gamemode

execute if entity @s[type=!player] run effect clear @s invisibility
execute if entity @s[type=!player] run data merge entity @s { Invulnerable: 0b, Silent: 0b, NoAI: 0b }

# Remove Wolf (if it wasn't already)
execute if entity @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1] run tag @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..3] add goldark.temp.dummy_morph_remove
execute if entity @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1] run data merge entity @n[type=wolf, tag=goldark.temp.dummy_morph_remove, distance=..3] { Silent: 1b, Health: 0, DeathTime: 20s }

# Display visual feedback
playsound block.candle.extinguish player @a[distance=..4] ~ ~ ~ 0.8 0.8
particle smoke ~ ~0.5 ~ .2 .4 .2 0.05 30

# Remove tag
tag @s remove goldark.path_transformed