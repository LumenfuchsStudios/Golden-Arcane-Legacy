## * LEVEL I: The Warning
## * 
## * Last modified: December 1st, 2024 (AydenTFoxx)


# Owie
execute if score @s goldark.effect_timer.holy_sickness matches 0..10 unless score @s goldark.dummy matches 0..4 store result score entity goldark.dummy run random value 0..4

execute if score @s goldark.effect_timer.holy_sickness matches 0..10 if score @s goldark.dummy matches 0 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.pure] actionbar { "text": "Ouch." }
execute if score @s goldark.effect_timer.holy_sickness matches 0..10 if score @s goldark.dummy matches 1 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.pure] actionbar { "text": "Ow... it hurts." }
execute if score @s goldark.effect_timer.holy_sickness matches 0..10 if score @s goldark.dummy matches 2 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.pure] actionbar { "text": "Nghh..." }
execute if score @s goldark.effect_timer.holy_sickness matches 0..10 if score @s goldark.dummy matches 3 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.pure] actionbar { "text": "It feels burning hot." }
execute if score @s goldark.effect_timer.holy_sickness matches 0..10 if score @s goldark.dummy matches 4 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.pure] actionbar { "text": "I have a bad feeling about this." }

execute if score @s goldark.effect_timer.holy_sickness matches 0..10 if score @s goldark.dummy matches 0..4 run scoreboard players reset @s goldark.dummy


# Display audiovisual feedback
execute if score @s goldark.effect_timer.holy_sickness matches 100..1200 if entity @s[tag=goldark.holy_sickness.active] run particle white_smoke ~ ~1 ~ .0 .5 .0 0.1 0
execute if score @s goldark.effect_timer.holy_sickness matches 100..1200 unless entity @s[tag=goldark.holy_sickness.active] run particle white_smoke ~ ~1 ~ .1 .3 .1 0.05 1

execute if score @s goldark.effect_timer.holy_sickness matches 100..500 run playsound block.candle.extinguish player @s ~ ~ ~ 0.5 0.8

# Display warning text
execute if score @s goldark.effect_timer.holy_sickness matches 200..210 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.pure] actionbar { "text": "You feel your hands burning...", "color": "red" }
execute if score @s goldark.effect_timer.holy_sickness matches 200..210 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.based] actionbar { "text": "You feel a sense of unease on what you're holding...", "color": "red" }