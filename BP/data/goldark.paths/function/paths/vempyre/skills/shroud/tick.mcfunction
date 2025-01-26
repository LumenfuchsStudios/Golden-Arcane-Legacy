## * Occasionally displays an audiovisual cue to the user's location.
## * Also ends the skill after some time has passed with no attack being made.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Display audiovisual feedback
execute if predicate goldark:misc/random_10 if predicate goldark:misc/random_25 \
        run particle smoke ~ ~1 ~ .2 .4 .2 0.01 5

execute if predicate goldark:misc/random_10 if predicate goldark:misc/random_10 \
        run playsound ambient.soul_sand_valley.additions player @a[distance=..16] ~ ~ ~ 0.7 0.5

# Display blood meter
execute if score @s goldark.ability_timer matches 640 \
        run function goldark.paths:paths/vempyre/display_blood


# Phase through blocks
execute if score @s goldark.ability_timer matches 221.. if predicate goldark:player_input/sprint if predicate goldark:player_input/sneak if predicate goldark:player_input/forward \
        anchored eyes unless block ^ ^1 ^1 #goldark:breathable if block ^ ^1 ^2 #goldark:breathable run function goldark.paths:paths/vempyre/skills/shroud/phase

execute if entity @s[tag=goldark.vempyre.shroud_phase] run particle smoke ~ ~1 ~ .1 .2 .1 0.1 20
execute if entity @s[tag=goldark.vempyre.shroud_phase] run tag @s remove goldark.vempyre.shroud_phase


# End ability (Timed out)
execute if score @s goldark.ability_timer matches ..120 run function goldark.paths:paths/vempyre/skills/shroud/end