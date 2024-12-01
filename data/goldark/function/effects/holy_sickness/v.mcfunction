## LEVEL V: By Your Will


title @s clear

# The end is nigh
execute if score @s goldark.effect_timer.holy_sickness matches 2800.. run particle portal ~ ~0.5 ~ .2 .4 .2 0.5 5
execute if score @s goldark.effect_timer.holy_sickness matches 2960 run playsound entity.warden.sonic_boom player @a[distance=..16] ~ ~ ~ 1.5 0.8 0.7

# The end is near
execute if score @s goldark.effect_timer.holy_sickness matches 2800.. run title @s subtitle { "text": "BYTHEGLORYOFHEAVENS", "color": "aqua", "bold": true, "obfuscated": true }

execute if score @s goldark.effect_timer.holy_sickness matches 2800.. run effect give @s nausea 99 0 true

# The end is here
execute if score @s goldark.effect_timer.holy_sickness matches 3000 run summon fireball ~ ~ ~ { ExplosionPower: 5, HasBeenShot: 1b, Motion: [0.0, -0.5, 0.0] }
execute if score @s goldark.effect_timer.holy_sickness matches 3000 run summon snowball ~ ~ ~ { HasBeenShot: 1b, Motion: [0.0, -1.0, 0.0] }
execute if score @s goldark.effect_timer.holy_sickness matches 3000 run stopsound @s

# The end is within
execute if score @s goldark.effect_timer.holy_sickness matches 3000 run playsound entity.wither.death player @a[distance=..16] ~ ~ ~ 1 0.5 0.3
execute if score @s goldark.effect_timer.holy_sickness matches 3100.. run damage @s 10 lightning_bolt