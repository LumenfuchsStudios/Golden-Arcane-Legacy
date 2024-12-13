## * Grants the user superhuman speeds, at the cost of their attacking strength.
## * 
## * Last modified: December 12th, 2024 (AydenTFoxx)


# Update scores
scoreboard players remove @s[scores={ goldark.ability_clock=10.. }] goldark.ability_clock 10
scoreboard players add @s goldark.ability_timer 80

# Add tag
tag @s add goldark.vempyre.skill_lunge


# Apply effects
effect give @s speed 3 4 true
effect give @s jump_boost 3 2 true

#effect give @s invisibility 2 1 true
effect give @s weakness 3 0

# Add attribute
attribute @s movement_efficiency base set 2.0


# Display audiovisual feedback
playsound item.firecharge.use player @s ~ ~ ~ 0.6 0.5
particle large_smoke ~ ~1 ~ .1 .5 .1 0.08 12

# Display message
title @s actionbar { "text": "[ LUNGE ]", "color": "dark_red" }