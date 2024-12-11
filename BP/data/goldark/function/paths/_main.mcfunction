## * Module Manager: Arcane PATHS
## * Paths of magic which grant special abilities as well as unique spells to its users.
## * 
## * Last modified: December 4th, 2024 (AydenTFoxx)


## (Any)

# Store current time of day
execute store result score #goldark_time_day goldark.dummy run time query daytime

# Update stored Moon phase
execute if score #goldark_time_day goldark.dummy matches 12600 store result score #goldark_moon_phase goldark.dummy run time query day
execute if score #goldark_time_day goldark.dummy matches 12600 run scoreboard players operation #goldark_moon_phase goldark.dummy %= #goldark_moon_check goldark.dummy

execute if score #goldark_time_day goldark.dummy matches 22400 store result score #goldark_moon_phase goldark.dummy run time query day
execute if score #goldark_time_day goldark.dummy matches 22400 run scoreboard players operation #goldark_moon_phase goldark.dummy %= #goldark_moon_check goldark.dummy

execute if score #goldark_time_day goldark.dummy matches 0 store result score #goldark_moon_phase goldark.dummy run time query day
execute if score #goldark_time_day goldark.dummy matches 0 run scoreboard players operation #goldark_moon_phase goldark.dummy %= #goldark_moon_check goldark.dummy


## WEREWOOF

# Run Werewoof behavior & traits
execute as @e[type=!#goldark:magic_immune, tag=goldark.paths.werewoof] at @s run function goldark:paths/werewoof/update

# Prevent player-less Wolf morphs
execute as @n[type=wolf, tag=goldark.dummy_morph.werewoof] at @s unless entity @n[type=!#goldark:magic_immune, tag=goldark.paths.werewoof, tag=goldark.path_transformed, tag=!goldark.dummy_morph.werewoof, distance=..2] run kill @s