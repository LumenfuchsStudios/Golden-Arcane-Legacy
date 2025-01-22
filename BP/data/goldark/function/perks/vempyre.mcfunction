## * Grants perks inherent to the Vempyre arcane path.
## * 
## * Last modified: December 12th, 2024 (AydenTFoxx)


## SET

# Grant attributes
attribute @s[tag=!goldark.perks.vempyre] attack_speed modifier add goldark:vempyre/attack_speed 3.0 add_value
attribute @s[tag=!goldark.perks.vempyre] sneaking_speed modifier add goldark:vempyre/sneaking_speed 0.1 add_value

attribute @s[tag=!goldark.perks.vempyre] burning_time modifier add goldark:vempyre/burning_time 1.5 add_multiplied_total
attribute @s[tag=!goldark.perks.vempyre] safe_fall_distance modifier add goldark:vempyre/safe_fall_distance 5.0 add_value

# Add tag
execute if entity @s[tag=!goldark.perks.vempyre] run return run tag @s add goldark.perks.vempyre


## RESET

# Revoke attributes
attribute @s attack_speed modifier remove goldark:vempyre/attack_speed
attribute @s sneaking_speed modifier remove goldark:vempyre/sneaking_speed

attribute @s burning_time modifier remove goldark:vempyre/burning_time
attribute @s safe_fall_distance modifier remove goldark:vempyre/safe_fall_distance

# Remove tag
tag @s remove goldark.perks.vempyre