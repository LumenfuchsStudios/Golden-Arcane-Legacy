## * Creates scoreboards and value holders for usage by Golden Arcane's features.
## *
## * Last modified: November 25th, 2024 (AydenTFoxx)


### OBJECTIVE DECLARATION

## Dummy (any)
# A featureless scoreboard with no specific function of its own;
# Used whenever a score is needed but does not warrant a new objective.
scoreboard objectives add goldark.dummy dummy

## Effect Clock (goldark)
# A periodic clock for passive/ambient effects in some locations, such as ABYSS' Darkness or Heavens' Regeneration.
scoreboard objectives add goldark.effect_clock dummy

## Use Spell (goldark)
# Triggers whenever a player uses a Spell item; Used by the Spell-Casting System's database.
scoreboard objectives add goldark.use_spell used:knowledge_book

## World Difficulty (goldark)
# Golden Arcane's own difficulty meter, auto-updated to the game's vanilla difficulty.

# Possible values are as follow: 
# 1 - Easy
# 2 - Medium
# 3 - Hard
# 4 - DARK (Golden Arcane-specific) (TODO)

scoreboard objectives add goldark.world_difficulty dummy

## Ability Clock (goldark, garrow)
# Adds a clock for running entities' abilities; Also doubles as a cooldown.
scoreboard objectives add goldark.ability_clock dummy

## Ability Timer (goldark, garrow)
# Adds a timer for the duration of an entity's ability.
scoreboard objectives add goldark.ability_timer dummy

## Flee Timeout (garrow)
# A timeout which ticks when players are too far from certain boss monsters.
scoreboard objectives add goldark.flee_timeout dummy

## Weapon Cooldown (garrow)
# Adds a cooldown for weapon-based abilities, like Golden Arrow's weapon swap.
scoreboard objectives add goldark.weapon_cooldown dummy


### VALUE INITIALIZATION

# Resets Golden Arcane's tick rate to default if it is below zero.
execute unless score #goldark_tick_rate goldark.dummy matches 1.. \
    run scoreboard players set #goldark_tick_rate goldark.dummy 2

# Sets Golden Arcane's difficulty to the world's difficulty equivalent.
# DARK Mode is regarded as Hard Mode-equivalent for this purpose.
execute store result score $goldark_diff_reload goldark.world_difficulty run difficulty

execute unless score $goldark_diff goldark.world_difficulty matches 4 store result score $goldark_diff goldark.world_difficulty run difficulty
execute if score $goldark_diff goldark.world_difficulty matches 4 unless score $goldark_diff_reload goldark.world_difficulty matches 3 store result score $goldark_diff goldark.world_difficulty run difficulty