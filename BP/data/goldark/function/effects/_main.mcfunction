## * Module Manager: EFFECT
## * Manages code related to custom Golden Arcane effects.
## * 
## * Last modified: December 19th, 2024 (AydenTFoxx)


## # EFFECTS

## Holy Sickness (Debuff)

# Run effect
execute as @e[type=!#goldark:magic_immune, scores={ goldark.effect_timer.holy_sickness=1.. }] at @s if loaded ~ ~ ~ run function goldark:effects/holy_sickness/tick

# Reset scores
execute as @e[scores={ goldark.effect_timer.holy_sickness=..0 }, tag=!goldark.holy_sickness.active] run scoreboard players reset @s goldark.dummy
execute as @e[type=!#goldark:magic_immune, scores={ goldark.effect_timer.holy_sickness=..0 }, tag=!goldark.holy_sickness.active] run scoreboard players reset @s goldark.effect_timer.holy_sickness


## Holy Numbness (Buff)

# Run effect
execute as @e[type=!#goldark:magic_immune, scores={ goldark.effect_timer.holy_numbness=1.. }] at @s if loaded ~ ~ ~ run function goldark:effects/holy_numbness/tick

# Reset score
scoreboard players reset @s[scores={ goldark.effect_timer.holy_numbness=..0 }] goldark.effect_timer.holy_numbness


## Purity (Neutral)

# Run effect
execute as @e[type=!#goldark:magic_immune, scores={ goldark.effect_timer.holy_numbness=1.. }, tag=goldark.effects.purity] at @s if loaded ~ ~ ~ run function goldark:effects/purity/tick


## # OTHER

# Remove effects on player death
execute as @a[scores={ goldark.death_count=1 }, nbt={ Health: 0.0f }] run scoreboard players set @s goldark.effect_timer.holy_sickness 0
execute as @a[scores={ goldark.death_count=1 }, nbt={ Health: 0.0f }] run scoreboard players set @s goldark.effect_timer.holy_numbness 0
execute as @a[scores={ goldark.death_count=1 }, nbt={ Health: 0.0f }] run tag @s remove goldark.effects.purity

# Revoke player perks on death
execute as @a[scores={ goldark.death_count=1 }, nbt={ Health: 0.0f }, tag=goldark.perks.werewoof] run function goldark:perks/werewoof
execute as @a[scores={ goldark.death_count=1 }, nbt={ Health: 0.0f }, tag=goldark.perks.vempyre] run function goldark:perks/vempyre

scoreboard players set @a[scores={ goldark.death_count=1.. }] goldark.death_count 0