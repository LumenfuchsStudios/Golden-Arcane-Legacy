## LEVEL II: The First Signs


# Display audiovisual feedback
particle dripping_water ~ ~1 ~ .1 .2 .1 0.1 2
execute if score @s goldark.effect_timer.holy_sickness matches 500 run playsound entity.player.breath player @s ~ ~ ~ 0.8 0.8

# Apply effects
effect give @s weakness 10 0 true
effect give @s mining_fatigue 10 0 true

# Display warning text
execute if score @s goldark.effect_timer.holy_sickness matches 500..510 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.pure] actionbar { "text": "Your strength begins to leave your body...", "color": "red", "italic": true }
execute if score @s goldark.effect_timer.holy_sickness matches 500..510 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.based] actionbar { "text": "Your throat burns, it's getting harder to breathe...", "color": "red", "italic": true }