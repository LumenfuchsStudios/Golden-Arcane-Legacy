## * Grants perks inherent to the Werewoof arcane path.
## * 
## * Last modified: February 11th, 2025 (AydenTFoxx)


## SET

# Grant attributes
attribute @s[tag=!goldark.perks.werewoof, scores={ goldark.path_level.werewoof=1 }] armor_toughness modifier add goldark:werewoof/armor_toughness 4 add_value
attribute @s[tag=!goldark.perks.werewoof, scores={ goldark.path_level.werewoof=2.. }] armor_toughness modifier add goldark:werewoof/armor_toughness 8 add_value

attribute @s[tag=!goldark.perks.werewoof, scores={ goldark.path_level.werewoof=1 }] attack_damage modifier add goldark:werewoof/attack_damage 2 add_value
attribute @s[tag=!goldark.perks.werewoof, scores={ goldark.path_level.werewoof=2.. }] attack_damage modifier add goldark:werewoof/attack_damage 3 add_value

attribute @s[tag=!goldark.perks.werewoof, scores={ goldark.path_level.werewoof=..2 }] jump_strength modifier add goldark:werewoof/jump_strength 0.15 add_value
attribute @s[tag=!goldark.perks.werewoof, scores={ goldark.path_level.werewoof=3.. }] jump_strength modifier add goldark:werewoof/jump_strength 0.2 add_value

attribute @s[tag=!goldark.perks.werewoof, scores={ goldark.path_level.werewoof=1 }] safe_fall_distance modifier add goldark:werewoof/safe_fall_distance 3 add_value
attribute @s[tag=!goldark.perks.werewoof, scores={ goldark.path_level.werewoof=2.. }] safe_fall_distance modifier add goldark:werewoof/safe_fall_distance 5 add_value

attribute @s[tag=!goldark.perks.werewoof, scores={ goldark.path_level.werewoof=1 }] mining_efficiency modifier add goldark:werewoof/mining_efficiency 1.5 add_multiplied_total
attribute @s[tag=!goldark.perks.werewoof, scores={ goldark.path_level.werewoof=2.. }] mining_efficiency modifier add goldark:werewoof/mining_efficiency 2 add_multiplied_total

# Add tag
execute if entity @s[tag=!goldark.perks.werewoof] run return run tag @s add goldark.perks.werewoof


## RESET

# Revoke attributes
attribute @s armor_toughness modifier remove goldark:werewoof/armor_toughness
attribute @s attack_damage modifier remove goldark:werewoof/attack_damage

attribute @s jump_strength modifier remove goldark:werewoof/jump_strength
attribute @s safe_fall_distance modifier remove goldark:werewoof/safe_fall_distance
attribute @s mining_efficiency modifier remove goldark:werewoof/mining_efficiency

# Remove tag
tag @s remove goldark.perks.werewoof