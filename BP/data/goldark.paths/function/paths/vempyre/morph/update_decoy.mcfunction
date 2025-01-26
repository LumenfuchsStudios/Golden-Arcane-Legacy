## * Runs behavior for the decoy bats released on transformation.
## * 
## * Last modified: January 25th, 2025 (AydenTFoxx)


## VISUAL

# Display particles
particle dust{ color: 3866881, scale: 0.5 } ~ ~0.5 ~ 0.1 0.1 0.1 0.1 2


## BEHAVIOR

# Move towards nearest mob
execute at @n[type=!#goldark:magic_immune, type=!bat, tag=!goldark.paths.vempyre, tag=!goldark.path_transformed, distance=..16] \
        run function goldark.paths:paths/vempyre/morph/decoy_target_mob

# Rotate towards target
rotate @s facing entity @n[type=!#goldark:magic_immune, type=!bat, tag=!goldark.paths.vempyre, tag=!goldark.path_transformed, distance=..16]


# Deal contact damage
damage @n[type=!#goldark:magic_immune, type=!bat, tag=!goldark.paths.vempyre, tag=!goldark.path_transformed, distance=..1] 2 mob_attack by @s

# Set on fire (strong variant, evolved Vempyrism)
execute if entity @s[tag=goldark.vempyre.bat_decoy_strong] run data modify entity @n[type=!#goldark:magic_immune, type=!bat, tag=!goldark.paths.vempyre, tag=!goldark.path_transformed, distance=..1] Fire set value 40s


# Tick timer
scoreboard players add @s goldark.ability_timer 1

# Remove self
data merge entity @s[scores={ goldark.ability_timer=80.. }] { Silent: 1b, Health: 0.0f, DeathTime: 20s }