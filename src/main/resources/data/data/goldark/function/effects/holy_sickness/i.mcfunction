## * LEVEL I: The Warning
## * 
## * Last modified: December 3rd, 2024 (AydenTFoxx)


# Display audiovisual feedback
execute if score @s goldark.effect_timer.holy_sickness matches 100..1200 if entity @s[tag=goldark.holy_sickness.active] run particle white_smoke ~ ~1 ~ .0 .5 .0 0.1 0
execute if score @s goldark.effect_timer.holy_sickness matches 100..1200 unless entity @s[tag=goldark.holy_sickness.active] run particle white_smoke ~ ~1 ~ .1 .3 .1 0.05 1

execute if score @s goldark.effect_timer.holy_sickness matches 100..500 run playsound block.candle.extinguish player @s ~ ~ ~ 0.5 0.8
execute if score @s goldark.effect_timer.holy_sickness matches 200..500 run effect give @s unluck 12 0 true

# Display warning text
execute if score @s goldark.effect_timer.holy_sickness matches 200..220 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.pure] actionbar { "text": "You feel your hands burning...", "color": "red" }
execute if score @s goldark.effect_timer.holy_sickness matches 200..220 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.based] actionbar { "text": "You feel a sense of unease on what you're holding...", "color": "red" }