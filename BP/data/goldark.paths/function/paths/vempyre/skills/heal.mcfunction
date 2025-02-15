## * Heals and/or applies Regeneration to the user.
## * 
## * Last modified: January 26th, 2025 (AydenTFoxx)


# Update scores
scoreboard players remove @s[scores={ goldark.ability_clock=20.. }, gamemode=!creative, gamemode=!spectator] goldark.ability_clock 20
scoreboard players add @s goldark.ability_timer 80

# Grant healing
effect give @s[scores={ goldark.health_check=17.. }] regeneration 12 0 true
effect give @s[scores={ goldark.health_check=..16 }] regeneration 4 1 true
effect give @s instant_health 1 0 true

effect give @s[scores={ goldark.path_level.vempyre=3.. }] instant_health 2 0 true

# Apply Slowness
effect give @s[scores={ goldark.path_level.vempyre=1 }] slowness 1 0


# Display audiovisual feedback
playsound block.enchantment_table.use player @s ~ ~ ~ 0.7 2
particle crimson_spore ~ ~ ~ .1 .5 .1 0.1 12

# Display message
title @s actionbar { "text": "-( HEAL )-", "color": "red" }

# Add tag (for displaying the blood meter)
tag @s add goldark.temp.display_blood