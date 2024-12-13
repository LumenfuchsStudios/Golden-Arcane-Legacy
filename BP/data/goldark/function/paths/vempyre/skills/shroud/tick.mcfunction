## * Occasionally displays an audiovisual cue to the user's location.
## * Also ends the skill after some time has passed with no attack being made.
## * 
## * Last modified: December 12th, 2024 (AydenTFoxx)


# Display audiovisual feedback
execute if predicate goldark:misc/random_10 if predicate goldark:misc/random_25 \
        run particle smoke ~ ~1 ~ .2 .4 .2 0.01 5

execute if predicate goldark:misc/random_10 if predicate goldark:misc/random_10 \
        run playsound ambient.soul_sand_valley.additions player @a[distance=..16] ~ ~ ~ 0.7 0.5


# End ability (Timed out)
execute if score @s goldark.ability_timer matches ..120 run function goldark:paths/vempyre/skills/shroud/end