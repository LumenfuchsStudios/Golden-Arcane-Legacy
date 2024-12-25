## * Grants perks inherent to the Vempyre arcane path.
## * 
## * Last modified: December 12th, 2024 (AydenTFoxx)


## SET

# Grant attributes
attribute @s[tag=!goldark.perks.vempyre] attack_speed base set 5.0
attribute @s[tag=!goldark.perks.vempyre] sneaking_speed base set 0.5

attribute @s[tag=!goldark.perks.vempyre] burning_time base set 2.0
attribute @s[tag=!goldark.perks.vempyre] safe_fall_distance base set 8.0

# Add tag
execute if entity @s[tag=!goldark.perks.vempyre] run return run tag @s add goldark.perks.vempyre


## RESET

# Revoke attributes
attribute @s attack_speed base set 4.0
attribute @s sneaking_speed base set 0.3

attribute @s burning_time base set 1.0
attribute @s safe_fall_distance base set 3.0

# Remove tag
tag @s remove goldark.perks.vempyre