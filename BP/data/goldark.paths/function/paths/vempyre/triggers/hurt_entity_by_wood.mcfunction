## * Inflicts extra harm upon a Vempyre being hit by a wooden weapon.
## * 
## * Last modified: February 15th, 2025 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark.paths:paths/vempyre/trigger/hurt_entity_by_wood

# Get target
tag @n[type=!#goldark:magic_immune, type=!player, tag=goldark.paths.vempyre, nbt={ HurtTime: 10s }, distance=..8] add goldark.temp.hurt_by_wood


# Convert into Absorption if player is Holy-immune
execute as @n[type=!#goldark:magic_immune, type=!player, tag=goldark.temp.hurt_by_wood, distance=..8] if entity @s[tag=goldark.perks.holy_immune] \
        run return run effect give @s regeneration 4 1 true


# Apply damage
damage @n[type=!#goldark:magic_immune, type=!player, tag=goldark.temp.hurt_by_wood, distance=..8] 2 magic

# Inflict effect
effect give @n[type=!#goldark:magic_immune, type=!player, tag=goldark.temp.hurt_by_wood, distance=..8] wither 4 1


# Remove tag
tag @n[type=!#goldark:magic_immune, type=!player, tag=goldark.temp.hurt_by_wood, distance=..8] remove goldark.temp.hurt_by_wood