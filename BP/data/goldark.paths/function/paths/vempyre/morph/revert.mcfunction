## * Returns a transformed Vempyre back to their human-ish form.
## * 
## * Last modified: January 26th, 2025 (AydenTFoxx)


# Remove tag
tag @s remove goldark.path_transformed

# Return gamemode
execute if entity @s[type=player] run function goldark:tools/reset_gamemode


# Grant slow fall
effect give @s slow_falling 4 0


# Remove Bat (if it wasn't already)
execute if entity @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=..2] run tag @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=..2] add goldark.temp.dummy_morph_remove
execute if entity @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=..2] run data merge entity @n[type=bat, tag=goldark.temp.dummy_morph_remove, distance=..2] { Silent: 1b, Health: 0, DeathTime: 20s }

# Display visual feedback
playsound particle.soul_escape player @a[distance=..8] ~ ~ ~ 1 0.8 0.3
particle large_smoke ~ ~0.5 ~ .2 .4 .2 0.01 32