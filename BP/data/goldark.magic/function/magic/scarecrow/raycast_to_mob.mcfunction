## * Detects if the scarecrow can see the targeted mob.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Display debug feedback
execute if data storage goldark:settings { debug_mode: 1b } run particle electric_spark ~ ~ ~ 0.0 0.0 0.0 0.0 1


# Detect entity
execute positioned ~ ~ ~ if entity @n[type=!#goldark:magic_immune, predicate=goldark:entity/is_hostile, distance=..2] \
        positioned as @s run return run function goldark.magic:magic/scarecrow/scare_mob

# Repeat raycast until success or going out of range
execute if entity @s[distance=..20] if block ~ ~ ~ #goldark:breathable positioned ^ ^ ^0.5 run function goldark.magic:magic/scarecrow/raycast_to_mob