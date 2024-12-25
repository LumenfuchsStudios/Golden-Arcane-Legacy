## * Grants perks inherent to the Werewoof arcane path.
## * 
## * Last modified: December 12th, 2024 (AydenTFoxx)


## SET

# Grant attributes
attribute @s[tag=!goldark.perks.werewoof] armor_toughness base set 4
attribute @s[tag=!goldark.perks.werewoof] attack_damage base set 3

attribute @s[tag=!goldark.perks.werewoof] jump_strength base set 0.55
attribute @s[tag=!goldark.perks.werewoof] safe_fall_distance base set 6
attribute @s[tag=!goldark.perks.werewoof] mining_efficiency base set 1.5

# Add tag
execute if entity @s[tag=!goldark.perks.werewoof] run return run tag @s add goldark.perks.werewoof


## RESET

# Revoke attributes
attribute @s armor_toughness base set 0
attribute @s attack_damage base set 1.0

attribute @s jump_strength base set 0.41999998688697815
attribute @s mining_efficiency base set 0.0

# Remove tag
tag @s remove goldark.perks.werewoof