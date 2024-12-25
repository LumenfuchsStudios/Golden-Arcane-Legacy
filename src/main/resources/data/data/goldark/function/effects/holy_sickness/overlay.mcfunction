## * The voices, man. They just won't shut the heck up.
## * 
## * Last modified: December 24th, 2024 (AydenTFoxx)


# Get yap num
execute store result score @s goldark.dummy run random value 10..35
execute store result score @s[scores={ goldark.effect_timer.holy_sickness=2000.. }] goldark.dummy run random value 0..100

# Yap
execute if score @s goldark.dummy matches 10..15 run title @s title { "text": "YNHZRFXN", "color": "red", "bold": true, "obfuscated": true }
execute if score @s goldark.dummy matches 16..20 run title @s title { "text": "LKRLSLPNL", "color": "red", "bold": true, "obfuscated": true }
execute if score @s goldark.dummy matches 21..25 run title @s title { "text": "224113", "color": "red", "bold": true, "obfuscated": true }
execute if score @s goldark.dummy matches 26..30 run title @s title { "text": "STRYLPN", "color": "red", "bold": true, "obfuscated": true }
execute if score @s goldark.dummy matches 31..35 run title @s title { "text": "THDRJLGMSSTR", "color": "red", "bold": true, "obfuscated": true }
execute if score @s goldark.dummy matches 36..38 run title @s title { "text": "ENLIGHTENMENT", "color": "red", "bold": true }
execute if score @s goldark.dummy matches 39..40 run title @s title { "text": "HEAVENS WHY", "color": "red", "bold": true }
execute if score @s goldark.dummy matches 41..45 run title @s title { "text": "KSFCHSRTLS", "color": "red", "bold": true, "obfuscated": true }
execute if score @s goldark.dummy matches 46..50 run title @s title { "text": "OVER AND OVER", "color": "red", "bold": true }
execute if score @s goldark.dummy matches 51..55 run title @s title { "text": "PURITY", "color": "red", "bold": true }
execute if score @s goldark.dummy matches 56..70 run title @s title { "text": "PURGE", "color": "red", "bold": true }

# Reset num
scoreboard players reset @s goldark.dummy


# Be mad (if triggered by Milk Bucket)
playsound entity.ghast.hurt player @s[scores={ goldark.effect_timer.holy_sickness=..2000 }] ~ ~ ~ 0.8 0.1
effect give @s[scores={ goldark.effect_timer.holy_sickness=..2000 }] darkness 8 0