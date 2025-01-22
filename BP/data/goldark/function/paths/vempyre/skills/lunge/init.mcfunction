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

effect give @s weakness 3 0
effect give @a[distance=..12] darkness 4 0 true


# Add attribute
attribute @s movement_efficiency modifier add goldark:vempyre/lunge_movement 2.0 add_value
attribute @s water_movement_efficiency modifier add goldark:vempyre/lunge_water_movement 1.5 add_value

attribute @s step_height modifier add goldark:vempyre/lunge_step 2.0 add_multiplied_total


# Display audiovisual feedback
playsound item.firecharge.use player @s ~ ~ ~ 0.6 0.5
particle large_smoke ~ ~1 ~ .1 .5 .1 0.08 12

# Display message
title @s actionbar { "text": "-[ LUNGE ]-", "color": "dark_red" }