## * Targets the nearest projectile and detects if it is visible to the scarebow.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Skip raycast if scarecrow is a Jack o' Lantern or there is a Redstone Torch at its position
execute if entity @s[tag=goldark.scarebow.jack_o_lantern] if block ~ ~ ~ #goldark:soul_light run return run function goldark-magic:magic/scarebow/scare_projectile

execute if block ~ ~ ~ redstone_torch run return run function goldark-magic:magic/scarebow/scare_projectile


# Otherwise, raycast towards nearest mob
execute positioned ^ ^ ^0.5 facing entity @n[type=#impact_projectiles, distance=..16] eyes positioned ^ ^ ^-0.5 if entity @s[distance=..0.7] \
        positioned as @s run function goldark-magic:magic/scarebow/raycast_to_projectile