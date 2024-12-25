## * Applies the ritual's effects and particles to the nearest player.
## * 
## * Last modified: December 14th, 2024 (AydenTFoxx)


# Apply effects to target
effect give @p[tag=goldark.paths.werewoof, distance=..9] hunger 5
effect give @p[tag=goldark.paths.werewoof, distance=..9] nausea 5
effect give @p[tag=goldark.paths.werewoof, distance=..9] slowness 5

# Display feedback
execute at @p[tag=goldark.paths.werewoof, distance=..9] run particle flame ~ ~1 ~ .1 .1 .1 0.1 2
execute at @p[tag=goldark.paths.werewoof, distance=..9] run particle portal ~ ~1 ~ .1 .1 .1 0.1 5