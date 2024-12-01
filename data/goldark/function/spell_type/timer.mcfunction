## * Enables the spell to expire after a certain delay.
## * 
## * Last modified: November 29th, 2024 (AydenTFoxx)


## SCORE TIMER

# Tick Clock
scoreboard players add @s goldark.ability_clock 1

# Reset Clock, increment Timer
scoreboard players add @s[scores={ goldark.ability_clock=100.. }] goldark.ability_timer 1
scoreboard players set @s[scores={ goldark.ability_clock=100.. }] goldark.ability_clock 1

# Remove Self (Tulips double spell duration)
execute unless block ~ ~ ~ #goldark:flowers/tulips if score @s goldark.ability_timer matches 10.. run function goldark:tools/clear_dummy
execute if block ~ ~ ~ #goldark:flowers/tulips if score @s goldark.ability_timer matches 20.. run function goldark:tools/clear_dummy