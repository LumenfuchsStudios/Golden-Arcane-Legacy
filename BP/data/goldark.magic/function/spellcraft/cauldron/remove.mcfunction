## * Removes the "magic" block entity marking an arcane-infused cauldron.
## * 
## * Last modified: January 25th, 2025 (AydenTFoxx)


# Move sideways if a cauldron is nearby instead of removing self
execute if data storage goldark:settings { movable_cauldron: true } if block ~1 ~ ~ #cauldrons align xyz run return run tp @s ~1 ~ ~
execute if data storage goldark:settings { movable_cauldron: true } if block ~ ~ ~1 #cauldrons align xyz run return run tp @s ~1 ~ ~
execute if data storage goldark:settings { movable_cauldron: true } if block ~-1 ~ ~ #cauldrons align xyz run return run tp @s ~1 ~ ~
execute if data storage goldark:settings { movable_cauldron: true } if block ~ ~ ~-1 #cauldrons align xyz run return run tp @s ~1 ~ ~


# Display audiovisual feedback
playsound block.beacon.deactivate block @a[distance=..32] ~ ~ ~ 0.8 0.8 0.1

particle explosion ~ ~0.5 ~ 0.0 0.0 0.0 1 1
particle portal ~ ~0.5 ~ 0.1 0.1 0.1 0.8 24

# Remove self
kill @s[type=#goldark:technical]