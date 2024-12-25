## * Engulfs the user in shadows, rendering them invisible and nigh-invulnerable.
## * 
## * Last modified: December 13th, 2024 (AydenTFoxx)


# Update scores
scoreboard players remove @s[scores={ goldark.ability_clock=80.. }] goldark.ability_clock 80
scoreboard players add @s goldark.ability_timer 720

# Add tag
tag @s add goldark.vempyre.skill_shroud


# Apply effects
effect give @s slowness infinite 1 true
effect give @s resistance infinite 3 true

effect give @s invisibility infinite 0 true
effect give @s strength infinite 2 true

# Add attribute
attribute @s knockback_resistance base set 0.8


# Display audiovisual feedback
playsound weather.rain.above player @s ~ ~ ~ 0.7 0.2

particle large_smoke ~ ~1 ~ .2 .5 .2 0.1 20 force
particle explosion ~ ~1 ~ .0 .0 .0 1.0 1

# Display message
title @s actionbar { "text": "-{ SHROUD }-", "color": "#401010" }