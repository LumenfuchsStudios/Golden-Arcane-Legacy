## * Detects if the scarebow can see the targeted projectile.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Display debug feedback
execute if data storage goldark:settings { debug_mode: 1b } run particle enchanted_hit ~ ~ ~ 0.0 0.0 0.0 0.0 1


# Detect entity
execute positioned ~ ~ ~ if entity @n[type=#impact_projectiles, distance=..2] \
        positioned as @s run return run function goldark.magic:magic/scarebow/scare_projectile

# Repeat raycast until success or going out of range
execute if entity @s[distance=..20] if block ~ ~ ~ #goldark:breathable positioned ^ ^ ^0.5 run function goldark.magic:magic/scarebow/raycast_to_projectile