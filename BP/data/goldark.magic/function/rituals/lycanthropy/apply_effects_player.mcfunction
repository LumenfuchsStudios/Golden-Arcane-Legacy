## * Applies the ritual's effects and particles to the nearest player.
## * 
## * Last modified: December 14th, 2024 (AydenTFoxx)


# Grant Darkness
effect give @p[tag=!goldark.paths.werewoof, tag=!goldark.path_transformed, distance=..9, limit=2] darkness 5 1 true

# Apply effects
effect give @p[tag=!goldark.paths.werewoof, tag=!goldark.path_transformed, distance=..9, limit=2] wither 2
effect give @p[tag=!goldark.paths.werewoof, tag=!goldark.path_transformed, distance=..9, limit=2] hunger 5
effect give @p[tag=!goldark.paths.werewoof, tag=!goldark.path_transformed, distance=..9, limit=2] nausea 5
effect give @p[tag=!goldark.paths.werewoof, tag=!goldark.path_transformed, distance=..9, limit=2] weakness 5

# Display feedback
execute at @p[tag=!goldark.paths.werewoof, tag=!goldark.path_transformed, distance=..9, limit=2] run particle nautilus ~ ~1 ~ .1 .1 .1 0.1 2
execute at @p[tag=!goldark.paths.werewoof, tag=!goldark.path_transformed, distance=..9, limit=2] run particle portal ~ ~1 ~ .1 .1 .1 0.1 4