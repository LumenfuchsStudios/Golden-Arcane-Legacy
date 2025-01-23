## * Weakens and harms Vempyres exposed to direct sunlight.
## * 
## * Last modified: December 13th, 2024 (AydenTFoxx)


# Add Holy Sickness debuff
execute unless score @s goldark.effect_timer.holy_sickness matches 1300.. \
        run scoreboard players add @s goldark.effect_timer.holy_sickness 1

tag @s[tag=!goldark.holy_sickness.active] add goldark.holy_sickness.active_sunlight
tag @s[tag=!goldark.holy_sickness.active] add goldark.holy_sickness.active


# Damage self
damage @s[scores={ goldark.effect_timer.holy_sickness=200.. }] 1 on_fire