## LEVEL I: The Warning


# Display audiovisual feedback
execute if score @s goldark.effect_timer.holy_sickness matches 100..1200 run particle white_smoke ~ ~1 ~ .0 .5 .0 0.1 0
execute if score @s goldark.effect_timer.holy_sickness matches 100..500 run playsound block.candle.extinguish player @s ~ ~ ~ 0.5 0.8

# Display warning text
execute if score @s goldark.effect_timer.holy_sickness matches 200..210 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.pure] actionbar { "text": "You feel your hands burning...", "color": "red", "italic": true }
execute if score @s goldark.effect_timer.holy_sickness matches 200..210 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.based] actionbar { "text": "You feel a sense of unease on what you're holding...", "color": "red", "italic": true }