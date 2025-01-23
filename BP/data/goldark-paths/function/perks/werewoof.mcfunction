## * Grants perks inherent to the Werewoof arcane path.
## * 
## * Last modified: December 12th, 2024 (AydenTFoxx)


## SET

# Grant attributes
attribute @s[tag=!goldark.perks.werewoof] armor_toughness modifier add goldark:werewoof/armor_toughness 4 add_value
attribute @s[tag=!goldark.perks.werewoof] attack_damage modifier add goldark:werewoof/attack_damage 2 add_value

attribute @s[tag=!goldark.perks.werewoof] jump_strength modifier add goldark:werewoof/jump_strength 0.125 add_value
attribute @s[tag=!goldark.perks.werewoof] safe_fall_distance modifier add goldark:werewoof/safe_fall_distance 3 add_value
attribute @s[tag=!goldark.perks.werewoof] mining_efficiency modifier add goldark:werewoof/mining_efficiency 1.5 add_multiplied_total

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