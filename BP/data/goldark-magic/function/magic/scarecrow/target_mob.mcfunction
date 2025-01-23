## * Targets the nearest hostile mob and detects if it can see the scarecrow.
## * 
## * Last modified: December 20th, 2024 (AydenTFoxx)


# Skip raycast if scarecrow is a Jack o' Lantern or there is a Redstone Torch at its position
execute if entity @s[tag=goldark.scarecrow.jack_o_lantern] if block ~ ~ ~ #goldark:soul_light run return run function goldark:magic/scarecrow/scare_mob

execute if block ~ ~ ~ redstone_torch run return run function goldark:magic/scarecrow/scare_mob


# Otherwise, raycast towards nearest mob
execute positioned ^ ^ ^0.5 facing entity @n[type=!#goldark:magic_immune, predicate=goldark:entity/is_hostile, distance=..20] eyes positioned ^ ^ ^-0.5 if entity @s[distance=..0.7] \
        positioned as @s run function goldark:magic/scarecrow/raycast_to_mob