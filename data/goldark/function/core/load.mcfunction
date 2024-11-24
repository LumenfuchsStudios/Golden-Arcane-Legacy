## # AydenTFoxx @ August 31st - September 25th, 2024

# * Creates scoreboards and value holders for usage by GoldArk's various modules.

# ? Run by: #minecraft:load


## Dummy (any)
# A featureless scoreboard with no specific function of its own;
# Used whenever a scoreboard is needed but code is too local or minor to warrant a brand new objective.
scoreboard objectives add goldark.dummy dummy

# Golden Arcane's tick rate is also set to default whenever it is an invalid value.
execute unless score #goldark_tick_rate goldark.dummy matches 1.. \
    run scoreboard players set #goldark_tick_rate goldark.dummy 2


## Effect Clock (goldark)
# A periodic clock for passive effects in some locations, such as ABYSS' Darkness or Heavens' Regeneration.
scoreboard objectives add goldark.effect_clock dummy

## Use Spell (goldark)
# Triggers whenever a player uses a Spell item; Triggers the Spell-casting System's database.
scoreboard objectives add goldark.use_spell used:knowledge_book

## Will: Self (goldark)
# A measurement of an entity's innate Willpower, or simply Will.
scoreboard objectives add goldark.will_self health

## Will: Total (goldark)
# A pool of Willpower containing all nearby entities.
scoreboard objectives add goldark.will_total dummy

## World Difficulty (goldark)
# Golden Arcane's own difficulty meter. On every reload, it updates itself to the game's vanilla difficulty.
# On Dark mode, Hard is checked instead; If below that, Dark mode is disabled and updated to the world's difficulty.
scoreboard objectives add goldark.world_difficulty dummy

# * 1 - Easy
# * 2 - Medium
# * 3 - Hard
# * 4 - DARK (Golden Arcane-exclusive)

execute store result score $goldark_diff_reload goldark.world_difficulty run difficulty

execute unless score $goldark_diff goldark.world_difficulty matches 4 store result score $goldark_diff goldark.world_difficulty run difficulty
execute if score $goldark_diff goldark.world_difficulty matches 4 unless score $goldark_diff_reload goldark.world_difficulty matches 3 store result score $goldark_diff goldark.world_difficulty run difficulty


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