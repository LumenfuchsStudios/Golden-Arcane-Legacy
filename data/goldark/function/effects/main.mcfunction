## * Module Manager: EFFECT
## * Manages code related to custom Golden Arcane effects.
## * 
## * Last modified: December 3rd, 2024 (AydenTFoxx)


## # BUFFS

# ...


## # DEBUFFS

## Holy Sickness

# Run effect
execute as @e[type=!#goldark:magic_immune, scores={ goldark.effect_timer.holy_sickness=1.. }] at @s run function goldark:effects/holy_sickness/tick

# Reset scores
execute as @e[scores={ goldark.effect_timer.holy_sickness=..0 }, tag=!goldark.holy_sickness.active] run scoreboard players reset @s goldark.dummy
execute as @e[type=!#goldark:magic_immune, scores={ goldark.effect_timer.holy_sickness=..0 }, tag=!goldark.holy_sickness.active] run scoreboard players reset @s goldark.effect_timer.holy_sickness

# Remove effect (player death)
execute as @a[scores={ goldark.effect_timer.holy_sickness=1.. }, nbt={ Health: 0.0f }] run scoreboard players set @s goldark.effect_timer.holy_sickness 0

# Revoke effect (Judgement)
execute as @e[type=!#goldark:magic_immune, tag=goldark.holy_sickness.active_judgement] at @s unless entity @n[type=#goldark:technical, tag=goldark.dummy_spell.judgement, distance=..3] run tag @s remove goldark.holy_sickness.active
execute as @e[type=!#goldark:magic_immune, tag=goldark.holy_sickness.active_judgement] at @s unless entity @n[type=#goldark:technical, tag=goldark.dummy_spell.judgement, distance=..3] run tag @s remove goldark.holy_sickness.active_judgement


## Inferno

# Soon! TM