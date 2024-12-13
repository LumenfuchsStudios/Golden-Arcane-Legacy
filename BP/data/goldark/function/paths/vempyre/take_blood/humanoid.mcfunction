## * Consumes life essence from the nearest hurt humanoid to the player.
## * 
## * Last modified: December 11th, 2024 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark:paths/vempyre/take_blood/humanoid


# Tag victim
tag @n[type=#goldark:humanoid/living, tag=!goldark.paths.vempyre, nbt={ HurtTime: 10s }, distance=..4] add goldark.temp.take_blood

# Add score to player
execute at @n[type=#goldark:humanoid/living, tag=goldark.temp.take_blood, distance=..4] run scoreboard players add @s goldark.ability_clock 4

# Display audiovisual feedback
execute at @n[type=#goldark:humanoid/living, tag=goldark.temp.take_blood, distance=..4] run particle dust_color_transition{ from_color: 5374723, to_color: 2031873, scale: 0.7 } ~ ~1 ~ 0.2 0.4 0.2 1.0 10 force
execute if entity @n[type=#goldark:humanoid/living, tag=goldark.temp.take_blood, distance=..4] run playsound entity.generic.eat player @s ~ ~ ~ 0.7 0.7


# Take health
damage @n[type=#goldark:humanoid/living, tag=goldark.temp.take_blood, distance=..4] 2 dry_out by @s

# Remove tag
tag @n[type=#goldark:humanoid/living, tag=goldark.temp.take_blood, distance=..4] remove goldark.temp.take_blood