## * Consumes a greater amount of essence from a creature drained by the player.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark.paths:paths/vempyre/take_blood/entity_kill

# Ignore if player has the Purity effect
execute if entity @s[tag=goldark.effects.purity] run return fail


# Add score to player
scoreboard players add @s goldark.ability_clock 8

# Grant saturation
effect give @s saturation 4 1 true


# Display audiovisual feedback
particle dust_color_transition{ from_color: 5374723, to_color: 2031873, scale: 0.7 } ~ ~1 ~ 0.3 0.4 0.3 0.8 20 force
playsound particle.soul_escape player @s ~ ~ ~ 0.8 0.7

# Display blood meter
function goldark.paths:paths/vempyre/display_blood