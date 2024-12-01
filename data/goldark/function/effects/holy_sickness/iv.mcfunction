## LEVEL IV: Terminal


# Display audiovisual feedback (pls don't)
particle large_smoke ~ ~0.5 ~ .1 .2 .1 0.01 5
playsound ambient.soul_sand_valley.mood player @s ~ ~ ~ 2 0.6

# Apply baddie effects (oh it hurts)
effect give @s slowness 30 2 false
effect give @s hunger 30 1 false
effect give @s darkness 30 0 true

effect clear @s regeneration
effect clear @s fire_resistance
effect clear @s water_breathing

# Oh god why it hurts so much
scoreboard players add @s goldark.dummy 100
scoreboard players operation @s goldark.dummy %= @s goldark.effect_timer.holy_sickness

execute if score @s goldark.dummy matches 200..500 run damage @s 2 in_fire by @s

# Damage every now and again
scoreboard players add @s goldark.dummy 1
scoreboard players operation @s goldark.dummy %= @s goldark.effect_timer.holy_sickness

# The voices can't stop the yap
execute if score @s goldark.dummy matches 333..999 store result score @s goldark.dummy run random value 0..100

execute if score @s goldark.dummy matches 10 run title @s title { "text": "YNHZRFXN", "color": "gold", "bold": true, "obfuscated": true }
execute if score @s goldark.dummy matches 11 run title @s title { "text": "LKRLSLPN", "color": "gold", "bold": true, "obfuscated": true }
execute if score @s goldark.dummy matches 12 run title @s title { "text": "224113", "color": "gold", "bold": true, "obfuscated": true }
execute if score @s goldark.dummy matches 13 run title @s title { "text": "STRYLPN", "color": "gold", "bold": true, "obfuscated": true }
execute if score @s goldark.dummy matches 14 run title @s title { "text": "THDRYSTR", "color": "gold", "bold": true, "obfuscated": true }
execute if score @s goldark.dummy matches 15 run title @s title { "text": "HEAVENS WHY", "color": "gold", "bold": true }
execute if score @s goldark.dummy matches 16 run title @s title { "text": "KSFCHSRTLS", "color": "gold", "bold": true, "obfuscated": true }
execute if score @s goldark.dummy matches 17 run title @s title { "text": "OVER AND OVER", "color": "gold", "bold": true }
execute if score @s goldark.dummy matches 18 run title @s title { "text": "ENLIGHTENMENT", "color": "gold", "bold": true }
execute if score @s goldark.dummy matches 19 run title @s title { "text": "PURITY", "color": "gold", "bold": true }
execute if score @s goldark.dummy matches 20 run title @s title { "text": "PURGE", "color": "gold", "bold": true }

# This must end
title @s actionbar { "text": "All things are in pain; You must be rid of what you hold dear.", "color": "gold", "bold": true }