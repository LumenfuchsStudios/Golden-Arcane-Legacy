## * Grants perks inherent to the Vempyre arcane path.
## * 
## * Last modified: February 11th, 2025 (AydenTFoxx)


## SET

# Grant attributes
attribute @s[tag=!goldark.perks.vempyre, scores={ goldark.path_level.vempyre=..2 }] attack_speed modifier add goldark:vempyre/attack_speed 3 add_value
attribute @s[tag=!goldark.perks.vempyre, scores={ goldark.path_level.vempyre=3.. }] attack_speed modifier add goldark:vempyre/attack_speed 4 add_value

attribute @s[tag=!goldark.perks.vempyre, scores={ goldark.path_level.vempyre=1 }] sneaking_speed modifier add goldark:vempyre/sneaking_speed 0.1 add_value
attribute @s[tag=!goldark.perks.vempyre, scores={ goldark.path_level.vempyre=2 }] sneaking_speed modifier add goldark:vempyre/sneaking_speed 0.15 add_value
attribute @s[tag=!goldark.perks.vempyre, scores={ goldark.path_level.vempyre=3.. }] sneaking_speed modifier add goldark:vempyre/sneaking_speed 0.2 add_value

attribute @s[tag=!goldark.perks.vempyre, scores={ goldark.path_level.vempyre=1 }] burning_time modifier add goldark:vempyre/burning_time 1.5 add_value
attribute @s[tag=!goldark.perks.vempyre, scores={ goldark.path_level.vempyre=2 }] burning_time modifier add goldark:vempyre/burning_time 2 add_value
attribute @s[tag=!goldark.perks.vempyre, scores={ goldark.path_level.vempyre=3.. }] burning_time modifier add goldark:vempyre/burning_time 3 add_value

attribute @s[tag=!goldark.perks.vempyre, scores={ goldark.path_level.vempyre=1 }] safe_fall_distance modifier add goldark:vempyre/safe_fall_distance 5 add_value
attribute @s[tag=!goldark.perks.vempyre, scores={ goldark.path_level.vempyre=2.. }] safe_fall_distance modifier add goldark:vempyre/safe_fall_distance 8 add_value

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