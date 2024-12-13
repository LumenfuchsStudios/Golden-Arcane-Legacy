## * LEVEL IV: Terminal
## * 
## * Last modified: December 13th, 2024 (AydenTFoxx)


# Display audiovisual feedback (pls don't)
execute if score @s goldark.effect_timer.holy_sickness matches 2500..2550 run playsound ambient.soul_sand_valley.mood player @s ~ ~ ~ 2 0.7

playsound entity.ghast.ambient player @s[scores={ goldark.effect_timer.holy_sickness=2100..2120 }] ~ ~ ~ 0.8 0.3
playsound entity.ghast.ambient player @s[scores={ goldark.effect_timer.holy_sickness=2200..2220 }] ~ ~ ~ 0.8 0.5
playsound entity.ghast.warn player @s[scores={ goldark.effect_timer.holy_sickness=2300..2320 }] ~ ~ ~ 0.8 0.8

playsound block.note_block.bass player @s[scores={ goldark.effect_timer.holy_sickness=..2500 }] ~ ~ ~ 0.8 0.3

particle large_smoke ~ ~0.5 ~ .1 .2 .1 0.01 2


# Apply baddie effects (oh it hurts)
effect give @s slowness 30 2 false
effect give @s hunger 30 1 false
effect give @s darkness 10 0 true

effect clear @s regeneration
effect clear @s fire_resistance
effect clear @s water_breathing

# Oh god why it hurts so much
scoreboard players add @s goldark.dummy 2
scoreboard players operation @s goldark.dummy %= @s goldark.effect_timer.holy_sickness

execute if score @s goldark.dummy matches 200.. run damage @s[tag=goldark.holy_sickness.active] 2 in_fire by @s
execute if score @s goldark.dummy matches 200.. if predicate goldark:misc/random_10 run damage @s[tag=!goldark.holy_sickness.active] 2 in_fire by @s

# Damage every now and again
scoreboard players add @s goldark.dummy 1
scoreboard players operation @s goldark.dummy %= @s goldark.effect_timer.holy_sickness

# The voices can't stop the yap
execute if score @s goldark.dummy matches 123..999 store result score @s goldark.dummy run random value 0..100

execute if score @s goldark.effect_timer.holy_sickness matches ..2750 if score @s goldark.dummy matches 10..70 run function goldark:effects/holy_sickness/overlay

# This must end
title @s[tag=goldark.holy_sickness.active, scores={ goldark.effect_timer.holy_sickness=..2500 }] actionbar { "text": "Everything is in pain; You must leave or you will be gone.", "color": "gold", "bold": true }
title @s[tag=goldark.holy_sickness.active, tag=!goldark.holy_sickness.pure_block, tag=!goldark.holy_sickness.active_judgement, scores={ goldark.effect_timer.holy_sickness=..2500 }] actionbar { "text": "All things are in pain; You must be rid of what you hold dear.", "color": "gold", "bold": true }

title @s[tag=!goldark.holy_sickness.active, scores={ goldark.effect_timer.holy_sickness=2800..3000 }] actionbar { "text": "Everything hurts. Everything just hurts.", "color": "dark_red" }

title @s[tag=goldark.holy_sickness.active, scores={ goldark.effect_timer.holy_sickness=2800..3000 }] actionbar { "text": "The End is Nigh", "color": "gold", "bold": true }
title @s[tag=!goldark.holy_sickness.active, scores={ goldark.effect_timer.holy_sickness=2800..3000 }] actionbar { "text": "I feel like I'm losing myself...", "color": "dark_red" }