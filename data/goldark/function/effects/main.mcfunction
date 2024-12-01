## * Module Manager: EFFECT
## * Manages code related to custom Golden Arcane effects.
## * 
## * Last modified: November 29th, 2024 (AydenTFoxx)


## BUFFS

# ...


## DEBUFFS

# ... Inferno?

# Holy Sickness
execute as @a[scores={ goldark.effect_timer.holy_sickness=1.. }] at @s run function goldark:effects/holy_sickness/tick

execute as @a[scores={ goldark.effect_timer.holy_sickness=1.. }, tag=!goldark.holy_sickness.active] run scoreboard players remove @s goldark.effect_timer.holy_sickness 1
execute as @a[scores={ goldark.effect_timer.holy_sickness=0 }, tag=!goldark.holy_sickness.active] run scoreboard players reset @s goldark.dummy
execute as @a[scores={ goldark.effect_timer.holy_sickness=0 }, tag=!goldark.holy_sickness.active] run scoreboard players reset @s goldark.effect_timer.holy_sickness

execute as @a[scores={ goldark.effect_timer.holy_sickness=1.. }] at @s unless entity @n[type=player, scores={ goldark.effect_timer.holy_sickness=1.. }, distance=..1] run scoreboard players set @s goldark.effect_timer.holy_sickness 0