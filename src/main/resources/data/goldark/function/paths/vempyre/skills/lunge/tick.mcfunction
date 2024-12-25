## * Displays a trail of smoke behind the player and ends the ability after some time.
## * 
## * Last modified: December 12th, 2024 (AydenTFoxx)


# Display audiovisual feedback
particle smoke ~ ~0.5 ~ .2 .4 .2 0.08 5

execute if predicate goldark:misc/random_10 if predicate goldark:misc/random_10 \
        run playsound ambient.basalt_deltas.mood player @a[distance=..16] ~ ~ ~ 0.7 0.5


# End skill
execute if score @s goldark.ability_timer matches ..20 run function goldark:paths/vempyre/skills/lunge/end