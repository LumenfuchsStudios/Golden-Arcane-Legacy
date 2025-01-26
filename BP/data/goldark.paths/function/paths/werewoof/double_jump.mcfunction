## * Gives the user a brief moment of Levitation, giving the illusion of a second jump.
## * 
## * Last modified: January 24th, 2025 (AydenTFoxx)


# Set timer
execute unless score @s goldark.ability_timer matches 1.. unless entity @s[tag=goldark.werewoof.double_jump] \
        run scoreboard players set @s goldark.ability_timer 40

# Give effects
effect give @s[scores={ goldark.ability_timer=40 }] levitation 1 20 true
effect give @s[scores={ goldark.ability_timer=40 }] hunger 1 10 true

# Grant fall resistance
attribute @s[scores={ goldark.ability_timer=40 }] safe_fall_distance modifier add goldark:werewoof/double_jump.safe_fall_distance 10 add_multiplied_total

# Add tag
tag @s[scores={ goldark.ability_timer=40 }] add goldark.werewoof.double_jump


# Display audiovisual feedback
playsound entity.wind_charge.wind_burst player @s[scores={ goldark.ability_timer=40 }] ~ ~ ~ 0.8 2

execute if score @s goldark.ability_timer matches 37.. run particle cloud ~ ~ ~ 0.05 0.05 0.05 0.01 1


# Revoke effect for second-jump illusion
effect clear @s[scores={ goldark.ability_timer=..37 }] levitation


# Revoke fall resistance
execute if entity @s[tag=goldark.werewoof.double_jump, predicate=goldark:entity/is_on_ground] \
        unless score @s goldark.ability_timer matches 30.. run attribute @s safe_fall_distance modifier remove goldark:werewoof/double_jump.safe_fall_distance

# Remove tag
execute if entity @s[tag=goldark.werewoof.double_jump, predicate=goldark:entity/is_on_ground] \
        unless score @s goldark.ability_timer matches 30.. run tag @s remove goldark.werewoof.double_jump