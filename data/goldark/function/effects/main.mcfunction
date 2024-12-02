## * Module Manager: EFFECT
## * Manages code related to custom Golden Arcane effects.
## * 
## * Last modified: November 29th, 2024 (AydenTFoxx)


## # BUFFS

# ...


## # DEBUFFS

# ... Inferno?

## Holy Sickness
# Run effect
execute as @a[scores={ goldark.effect_timer.holy_sickness=1.. }] at @s run function goldark:effects/holy_sickness/tick

# Reduce duration (if not active)
execute as @a[scores={ goldark.effect_timer.holy_sickness=1.. }, tag=!goldark.holy_sickness.active] run scoreboard players remove @s goldark.effect_timer.holy_sickness 1
execute as @a[scores={ goldark.effect_timer.holy_sickness=1200.. }, tag=!goldark.holy_sickness.active] run scoreboard players remove @s goldark.effect_timer.holy_sickness 10

# Remove effect on player death
execute as @a[scores={ goldark.effect_timer.holy_sickness=1.. }, nbt={ Health: 0.0f }] run scoreboard players set @s goldark.effect_timer.holy_sickness 0

# Reset scores
execute as @a[scores={ goldark.effect_timer.holy_sickness=0 }, tag=!goldark.holy_sickness.active] run scoreboard players reset @s goldark.dummy
execute as @a[scores={ goldark.effect_timer.holy_sickness=0 }, tag=!goldark.holy_sickness.active] run scoreboard players reset @s goldark.effect_timer.holy_sickness