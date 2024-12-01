## LEVEL III: Shit Got BAD


# Display audiovisual feedback
playsound block.fire.ambient player @s ~ ~ ~ 1.2 1.2
particle small_flame ~ ~1 ~ .1 .5 .1 0.05 2

# Apply effects
execute if score @s goldark.effect_timer.holy_sickness matches 1200..1210 run effect give @s poison 30 1 false

# Damage every now and then
scoreboard players add @s goldark.dummy 1
scoreboard players operation @s goldark.dummy %= @s goldark.effect_timer.holy_sickness

execute if score @s goldark.dummy matches 10..50 run damage @s 1 in_fire by @s
execute if score @s goldark.dummy matches 51..100 if block ~ ~ ~ #air run setblock ~ ~ ~ fire

# Display warning text
execute if score @s goldark.effect_timer.holy_sickness matches 1200..1210 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.pure] actionbar { "text": "Your skin catches fire! Everything burns!", "color": "dark_red", "italic": true }
execute if score @s goldark.effect_timer.holy_sickness matches 1200..1210 run title @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.based] actionbar { "text": "Your body is burning, everything is in pain...", "color": "dark_red", "italic": true }