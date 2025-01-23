## * Reduces the user's Holy Sickness effect.
## * 
## * Last modified: December 11th, 2024 (AydenTFoxx)


# Reduce Holy Sickness timer
scoreboard players remove @s[scores={ goldark.effect_timer.holy_sickness=1.. }] goldark.effect_timer.holy_sickness 3

# Limit Holy Sickness timer
scoreboard players set @s[scores={ goldark.effect_timer.holy_sickness=1300.. }] goldark.effect_timer.holy_sickness 1300


# Reduce Holy Numbness timer
scoreboard players remove @s goldark.effect_timer.holy_numbness 1
scoreboard players remove @s[tag=goldark.holy_sickness.pure_block] goldark.effect_timer.holy_numbness 1