## * Revokes the user's granted speed and trades it for slowness.
## * 
## * Last modified: January 26th, 2025 (AydenTFoxx)


# Display audiovisual feedback
playsound block.sand.place player @s ~ ~ ~ 0.8 0.6
particle cloud ~ ~1 ~ .1 .2 .1 0.1 10

# Apply Slowness
effect give @s[scores={ goldark.path_level.vempyre=1 }] slowness 2 0

# Reset attribute
attribute @s movement_efficiency modifier remove goldark:vempyre/lunge_movement
attribute @s water_movement_efficiency modifier remove goldark:vempyre/lunge_water_movement

attribute @s step_height modifier remove goldark:vempyre/lunge_step


# Remove tag
tag @s remove goldark.vempyre.skill_lunge

# Display blood meter
function goldark.paths:paths/vempyre/display_blood