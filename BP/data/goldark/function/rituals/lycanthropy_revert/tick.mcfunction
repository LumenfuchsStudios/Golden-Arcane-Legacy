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
particle soul_fire_flame ^ ^ ^0.5 0.0 0.5 0.5 0.1 0
particle soul_fire_flame ^ ^ ^-0.5 0.0 0.5 -0.5 0.1 0
particle soul_fire_flame ^0.5 ^ ^ 0.5 0.5 0.0 0.1 0
particle soul_fire_flame ^-0.5 ^ ^ -0.5 0.5 0.0 0.1 0

particle end_rod ~2 ~3 ~2 0.1 0.1 0.1 0.05 1
particle end_rod ~2 ~3 ~-2 0.1 0.1 0.1 0.05 1
particle end_rod ~-2 ~3 ~2 0.1 0.1 0.1 0.05 1
particle end_rod ~-2 ~3 ~-2 0.1 0.1 0.1 0.05 1

particle smoke ~ ~ ~ 0.1 0.1 0.1 0.1 1

particle smoke ^ ^ ^4 .01 .01 .01 0.05 10 force
particle smoke ^ ^ ^-4 .01 .01 .01 0.05 10 force

# Play audio
scoreboard players add @s goldark.dummy 1

execute if score @s goldark.dummy matches 80 run playsound ambient.nether_wastes.mood neutral @a[distance=..16] ~ ~ ~ 1 0.5 0.3

scoreboard players reset @s[scores={ goldark.dummy=80.. }] goldark.dummy


# Grant debuffs to all nearby players
effect give @a[distance=..16] blindness 5 1 true
effect give @a[distance=..16] weakness 5

# Apply effects to targeted player
effect give @p[tag=goldark.paths.werewoof, limit=4] hunger 5
effect give @p[tag=goldark.paths.werewoof, limit=4] nausea 5
effect give @p[tag=goldark.paths.werewoof, limit=4] slowness 5

# Display feedback
execute at @p[tag=goldark.paths.werewoof, limit=4] run particle flame ~ ~1 ~ .1 .1 .1 0.1 2
execute at @p[tag=goldark.paths.werewoof, limit=4] run particle portal ~ ~1 ~ .1 .1 .1 0.1 5


# Display final feedback
execute if score @s goldark.ability_clock matches 350.. run playsound block.portal.trigger neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.3
execute if score @s goldark.ability_clock matches 350.. run particle cloud ~ ~-1 ~ 1.0 1.0 1.0 0.1 3

# Run final phase
execute if score @s goldark.ability_clock matches 400.. run function goldark:rituals/lycanthropy_revert/end