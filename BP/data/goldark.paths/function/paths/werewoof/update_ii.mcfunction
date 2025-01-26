## * Runs extra behaviors and perks for leveled up Werewooves.
## * 
## * Last modified: January 24th, 2025 (AydenTFoxx)


# Allow double jump (Player)
execute unless predicate goldark:entity/is_on_ground if predicate goldark:player_input/sprint if predicate goldark:player_input/jump \
        unless score @s goldark.ability_timer matches 1.. unless score @s goldark.hunger_check matches ..8 \
        if block ~ ~-1.5 ~ #goldark:breathable run function goldark.paths:paths/werewoof/double_jump

execute if entity @s[tag=goldark.werewoof.double_jump] run function goldark.paths:paths/werewoof/double_jump