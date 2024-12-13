## * Executes the Ritual of Lycanthropy, forbidden magic of turning thyself into a Werewoof.
## * 
## * Last modified: December 10th, 2024 (AydenTFoxx)


# Remove self if Soul Lantern is broken
execute unless block ~ ~ ~ soul_lantern run return run kill @s[type=#goldark:technical]


# Tick timer
scoreboard players add @s goldark.ability_clock 1

# Rotate self
tp @s ~ ~ ~ ~10 ~

# Display particles
particle soul_fire_flame ~2 ~3 ~2 -0.5 -0.8 -0.5 0.2 0
particle soul_fire_flame ~2 ~3 ~-2 -0.5 -0.8 0.5 0.2 0
particle soul_fire_flame ~-2 ~3 ~2 0.5 -0.8 -0.5 0.2 0
particle soul_fire_flame ~-2 ~3 ~-2 0.5 -0.8 0.5 0.2 0

particle end_rod ~2 ~3 ~2 0.1 0.1 0.1 0.01 1
particle end_rod ~2 ~3 ~-2 0.1 0.1 0.1 0.01 1
particle end_rod ~-2 ~3 ~2 0.1 0.1 0.1 0.01 1
particle end_rod ~-2 ~3 ~-2 0.1 0.1 0.1 0.01 1

particle large_smoke ~2 ~3 ~2 -0.5 -0.8 -0.5 0.1 1
particle large_smoke ~2 ~3 ~-2 -0.5 -0.8 0.5 0.1 1
particle large_smoke ~-2 ~3 ~2 0.5 -0.8 -0.5 0.1 1
particle large_smoke ~-2 ~3 ~-2 0.5 -0.8 0.5 0.1 1

particle smoke ^ ^ ^6 .01 .01 .01 0.05 10 force
particle smoke ^ ^ ^-6 .01 .01 .01 0.05 10 force

# Play audio
scoreboard players add @s goldark.dummy 1

execute if score @s goldark.dummy matches 60 run playsound ambient.cave neutral @a[distance=..16] ~ ~ ~ 1 0.5 0.3

scoreboard players reset @s[scores={ goldark.dummy=60.. }] goldark.dummy


# Grant Darkness
effect give @a[distance=..16] darkness 5 1 true


# Apply effects to nearest player
effect give @p[tag=!goldark.paths.werewoof, tag=!goldark.path_transformed] wither 2
effect give @p[tag=!goldark.paths.werewoof, tag=!goldark.path_transformed] hunger 5
effect give @p[tag=!goldark.paths.werewoof, tag=!goldark.path_transformed] nausea 5
effect give @p[tag=!goldark.paths.werewoof, tag=!goldark.path_transformed] weakness 5

# Display feedback
execute at @p[tag=!goldark.paths.werewoof, tag=!goldark.path_transformed] run particle nautilus ~ ~1 ~ .1 .1 .1 0.1 2
execute at @p[tag=!goldark.paths.werewoof, tag=!goldark.path_transformed] run particle portal ~ ~1 ~ .1 .1 .1 0.1 4


# Display final particles
execute if score @s goldark.ability_clock matches 250.. run particle end_rod ~ ~-1 ~ .1 .1 .1 0.1 10

# Run final phase
execute if score @s goldark.ability_clock matches 300.. run function goldark:rituals/lycanthropy/end