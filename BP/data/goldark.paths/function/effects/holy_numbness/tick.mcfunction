## * Reduces the user's Holy Sickness effect.
## * 
## * Last modified: January 26th, 2025 (AydenTFoxx)


# Display particles
execute unless entity @s[tag=goldark.effects.purity] if predicate goldark:misc/random_10 run particle entity_effect{ color: [ 0.8f, 0.98f, 0.9f, 0.48f ] } ~ ~1 ~ 0.2 0.5 0.2 0.0 2
execute if entity @s[tag=goldark.effects.purity] if predicate goldark:misc/random_10 run particle entity_effect{ color: [ 0.8f, 0.8f, 0.94f, 0.9f ] } ~ ~1 ~ 0.2 0.5 0.2 0.0 2


# Reduce Holy Sickness timer
scoreboard players remove @s[scores={ goldark.effect_timer.holy_sickness=1.. }] goldark.effect_timer.holy_sickness 4

# Limit Holy Sickness timer
scoreboard players set @s[scores={ goldark.effect_timer.holy_sickness=1300.. }] goldark.effect_timer.holy_sickness 1300


# Reduce Holy Numbness timer
scoreboard players remove @s goldark.effect_timer.holy_numbness 1
scoreboard players remove @s[tag=goldark.holy_sickness.pure_block] goldark.effect_timer.holy_numbness 1