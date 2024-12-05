## * LEVEL III: Shit Got BAD
## * 
## * Last modified: December 4th, 2024 (AydenTFoxx)


# Display audiovisual feedback
playsound entity.blaze.ambient player @s[scores={ goldark.effect_timer.holy_sickness=..1200 }] ~ ~ ~ 0.8 0.5
playsound entity.blaze.ambient player @s[scores={ goldark.effect_timer.holy_sickness=1450..1500 }] ~ ~ ~ 0.8 0.5
playsound entity.blaze.ambient player @s[scores={ goldark.effect_timer.holy_sickness=1650..1700 }] ~ ~ ~ 0.8 0.5
playsound entity.blaze.ambient player @s[scores={ goldark.effect_timer.holy_sickness=1850..1900 }] ~ ~ ~ 0.8 0.5

particle small_flame ~ ~0.5 ~ .15 .3 .15 0.05 2

# Apply effects
execute unless entity @s[nbt={ active_effects: [ { id: "minecraft:poison" } ] }] run effect give @s poison 12 1 false

# Damage every now and then
execute unless score @s goldark.effect_timer.holy_sickness matches 2100.. run scoreboard players add @s goldark.dummy 5
execute unless score @s goldark.effect_timer.holy_sickness matches 2100.. run scoreboard players operation @s goldark.dummy %= @s goldark.effect_timer.holy_sickness

execute if score @s goldark.dummy matches 10..80 run damage @s[tag=goldark.holy_sickness.active] 1 in_fire by @s

# Set player on fire
execute unless score @s goldark.effect_timer.holy_sickness matches 2100.. if score @s[tag=goldark.holy_sickness.active] goldark.dummy matches 5..10 if block ~ ~ ~ #air run setblock ~ ~ ~ fire

# Display warning text
execute if score @s goldark.effect_timer.holy_sickness matches 1200..1220 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.pure] actionbar { "text": "Your skin catches fire! Everything burns!", "color": "dark_red", "italic": true }
execute if score @s goldark.effect_timer.holy_sickness matches 1200..1220 run title @s[tag=goldark.holy_sickness.active, tag=!goldark.holy_sickness.pure] actionbar { "text": "Your body is burning, everything is in pain...", "color": "dark_red", "italic": true }