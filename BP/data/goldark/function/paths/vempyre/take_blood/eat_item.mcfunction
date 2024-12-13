## * Consumes life essence from the nearest living creature to the player.
## * 
## * Last modified: December 13th, 2024 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark:paths/vempyre/take_blood/eat_item


# Add score to player
scoreboard players add @s goldark.ability_clock 2

# Display audiovisual feedback
particle dust_color_transition{ from_color: 5374723, to_color: 2031873, scale: 0.7 } ~ ~1 ~ 0.2 0.4 0.2 1.0 10 force
playsound entity.generic.eat player @s ~ ~ ~ 0.6 0.5