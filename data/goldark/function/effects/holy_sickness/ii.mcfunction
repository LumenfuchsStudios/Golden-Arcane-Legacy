## * LEVEL II: The First Signs
## * 
## * Last modified: December 1st, 2024 (AydenTFoxx)


# Display audiovisual feedback
execute if score @s goldark.effect_timer.holy_sickness matches ..1200 run particle dripping_water ~ ~1 ~ .1 .2 .1 0.1 1
execute if score @s goldark.effect_timer.holy_sickness matches 1200.. run particle dripping_lava ~ ~1 ~ .1 .2 .1 0.1 1

execute if score @s goldark.effect_timer.holy_sickness matches ..1200 run scoreboard players add @s goldark.dummy 1

execute if score @s goldark.effect_timer.holy_sickness matches ..1200 if score @s goldark.dummy matches 40 run playsound entity.player.breath player @s ~ ~ ~ 0.5 0.5

scoreboard players reset @s[scores={ goldark.dummy=40..1200 }] goldark.dummy

# Apply effects
effect give @s slowness 10 0
effect give @s weakness 10 0

effect give @s[tag=goldark.holy_sickness.active] nausea 5 0 true
effect give @s[tag=goldark.holy_sickness.active] mining_fatigue 8 0 true

# Display warning text
execute if score @s goldark.effect_timer.holy_sickness matches 500..510 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.pure] actionbar { "text": "Your strength begins to leave your body...", "color": "red", "italic": true }
execute if score @s goldark.effect_timer.holy_sickness matches 500..510 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.based] actionbar { "text": "Your throat burns, it's getting harder to breathe...", "color": "red", "italic": true }