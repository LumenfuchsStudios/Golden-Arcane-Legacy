## * Inflicts extra harm upon a Werewoof being hit by an Iron weapon.
## * 
## * Last modified: February 15th, 2025 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark.paths:paths/werewoof/trigger/hurt_entity_by_iron

# Get target
tag @n[type=!#goldark:magic_immune, type=!player, tag=goldark.paths.werewoof, nbt={ HurtTime: 10s }, distance=..8] add goldark.temp.hurt_by_iron


# Convert into Absorption if player is Holy-immune
execute as @n[type=!#goldark:magic_immune, type=!player, tag=goldark.temp.hurt_by_iron, distance=..8] if entity @s[tag=goldark.perks.holy_immune] \
        run return run effect give @s absorption 4 0 true


# Apply damage
damage @n[type=!#goldark:magic_immune, type=!player, tag=goldark.temp.hurt_by_iron, distance=..8] 1 on_fire

# Inflict effect
effect give @n[type=!#goldark:magic_immune, type=!player, tag=goldark.temp.hurt_by_iron, distance=..8] poison 3 0


# Remove tag
tag @n[type=!#goldark:magic_immune, type=!player, tag=goldark.temp.hurt_by_iron, distance=..8] remove goldark.temp.hurt_by_iron