## * Module Manager: Arcane PATHS
## * Paths of magic which grant special abilities as well as unique spells to its users.
## * 
## * Last modified: January 26th, 2025 (AydenTFoxx)


# Store current time of day
execute store result score #goldark_time_day goldark.dummy run time query daytime

# Update stored Moon phase
execute if score #goldark_time_day goldark.dummy matches 12600 store result score #goldark_moon_phase goldark.dummy run time query day
execute if score #goldark_time_day goldark.dummy matches 12600 run scoreboard players operation #goldark_moon_phase goldark.dummy %= #goldark_moon_check goldark.dummy

execute if score #goldark_time_day goldark.dummy matches 0 store result score #goldark_moon_phase goldark.dummy run time query day
execute if score #goldark_time_day goldark.dummy matches 0 run scoreboard players operation #goldark_moon_phase goldark.dummy %= #goldark_moon_check goldark.dummy


# Remove Perks while Purity is active
execute as @a[tag=goldark.effects.purity, tag=goldark.perks.werewoof] run function goldark.paths:perks/werewoof
execute as @a[tag=goldark.effects.purity, tag=goldark.perks.vempyre] run function goldark.paths:perks/vempyre


## WEREWOOF

# Run Werewoof behavior & traits
execute as @e[type=!#goldark:magic_immune, tag=goldark.paths.werewoof, tag=!goldark.effects.purity] at @s if loaded ~ ~ ~ run function goldark.paths:paths/werewoof/update
execute as @e[type=!#goldark:magic_immune, tag=goldark.paths.werewoof, tag=!goldark.effects.purity, scores={ goldark.path_level.werewoof=2.. }] at @s if loaded ~ ~ ~ run function goldark.paths:paths/werewoof/update_ii

# Convert random entities to Werewooves on Full Moons
execute if score #goldark_moon_phase goldark.dummy matches 0 if score #goldark_time_day goldark.dummy matches 18000..22000 \
        if predicate goldark:misc/random_1 if predicate goldark:misc/random_5 if predicate goldark:misc/random_10 \
        as @a at @s as @n[type=!#goldark:magic_immune, type=!player, tag=!goldark.paths.werewoof, sort=random, distance=..256] at @s \
        if loaded ~ ~ ~ run function goldark.paths:tools/lycanthropy/convert

# Prevent mob-less Wolf morphs
execute as @e[type=wolf, tag=goldark.dummy_morph.werewoof] at @s if loaded ~ ~ ~ unless entity @n[type=!#goldark:magic_immune, tag=goldark.paths.werewoof, tag=goldark.path_transformed, tag=!goldark.dummy_morph.werewoof, tag=!goldark.effects.purity, distance=..4] run kill @s


## VEMPYRE

# Run Vempyre behavior & traits
execute as @e[type=!#goldark:magic_immune, tag=goldark.paths.vempyre, tag=!goldark.effects.purity] at @s if loaded ~ ~ ~ run function goldark.paths:paths/vempyre/update

# Prevent player-less Bat morphs
execute as @e[type=bat, tag=goldark.dummy_morph.vempyre] at @s if loaded ~ ~ ~ unless entity @a[tag=goldark.paths.vempyre, tag=goldark.path_transformed, tag=!goldark.effects.purity, distance=..4] run kill @s

# Update bat decoys
execute as @e[type=bat, tag=goldark.vempyre.bat_decoy] at @s run function goldark.paths:paths/vempyre/decoy/update