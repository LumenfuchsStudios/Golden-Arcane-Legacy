## * "Explodes" the projectile, causing AoE damage to non-immune entities.
## * 
## * Last modified: January 25th, 2025 (AydenTFoxx)


# Damage nearby (hostile) mobs
execute as @e[type=!#goldark:magic_immune, tag=!goldark.perks.holy_immune, predicate=goldark:entity/is_hostile, distance=..4] run damage @s 8 magic

# Damage anything else
execute as @e[type=!#goldark:magic_immune, type=!#goldark:player_allies, tag=!goldark.perks.holy_immune, distance=..4] run damage @s 4 magic

# Inflict Purity on nearby targets
execute as @e[type=!#goldark:magic_immune, distance=..4] run function goldark.paths:effects/purity/give


# Display audiovisual feedback
playsound block.beacon.deactivate neutral @a[distance=..32] ~ ~ ~ 1 0.5 0.1

particle explosion ~ ~ ~ 0.0 0.0 0.0 1 1 force

particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.1 20
particle soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.05 12


# Remove self
kill @s[type=#goldark:technical]