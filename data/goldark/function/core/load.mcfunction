## * Creates scoreboards and value holders for usage by Golden Arcane's features.
## *
## * Last modified: November 25th, 2024 (AydenTFoxx)


### OBJECTIVE DECLARATION

## [Import from load_effects] (goldark)
function goldark:core/load_effects


## Dummy (any)
# A featureless scoreboard with no specific function of its own;
# Used whenever a score is needed but does not warrant a new objective.
scoreboard objectives add goldark.dummy dummy

## Ambience Clock (goldark)
# A periodic clock for passive/ambient effects in some locations, such as ABYSS' Darkness or Heavens' Regeneration.
scoreboard objectives add goldark.ambient_clock dummy

## Ability Clock (goldark, garrow)
# Adds a clock for running entities' abilities; Also doubles as a cooldown.
scoreboard objectives add goldark.ability_clock dummy

## Ability Timer (goldark, garrow)
# Adds a timer for the duration of an entity's ability.
scoreboard objectives add goldark.ability_timer dummy


### VALUE INITIALIZATION

# Resets Golden Arcane's tick rate to default if it is below zero.
execute unless score #goldark_tick_rate goldark.dummy matches 1.. \
    run scoreboard players set #goldark_tick_rate goldark.dummy 2

# Sets Golden Arcane's difficulty to the world's difficulty equivalent.
# DARK Mode is regarded as Hard Mode-equivalent for this purpose.
execute store result score $goldark_diff_reload goldark.dummy run difficulty

execute unless score $goldark_diff goldark.dummy matches 4 store result score $goldark_diff goldark.dummy run difficulty
execute if score $goldark_diff goldark.dummy matches 4 unless score $goldark_diff_reload goldark.dummy matches 3 store result score $goldark_diff goldark.dummy run difficulty