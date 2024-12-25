## * LEVEL V: By Your Will
## * 
## * Last modified: December 5th, 2024 (AydenTFoxx)


# Remove previous titles
execute if score @s goldark.effect_timer.holy_sickness matches 2750..2775 run title @s clear

# The end is nigh
execute if score @s goldark.effect_timer.holy_sickness matches ..3000 run particle end_rod ~ ~0.5 ~ .15 .3 .15 0.1 3

execute if score @s goldark.effect_timer.holy_sickness matches 2900..3000 run playsound ambient.soul_sand_valley.mood player @s ~ ~ ~ 1 1.5

# The end is near
execute if score @s goldark.effect_timer.holy_sickness matches 2800..2850 run title @s title { "text": "ABOVEANDBELOW", "color": "aqua", "bold": true, "obfuscated": true }
execute if score @s goldark.effect_timer.holy_sickness matches 2950..3000 run title @s title { "text": "ABOVEANDBELOW", "color": "aqua", "bold": true, "obfuscated": true }
execute if score @s goldark.effect_timer.holy_sickness matches 2850..2950 run title @s subtitle { "text": "BYTHEGLORYOFHEAVENS", "color": "aqua", "bold": true, "obfuscated": true }
execute if score @s goldark.effect_timer.holy_sickness matches 3000..3050 run title @s[scores={ goldark.effect_timer.holy_sickness=2900.. }] subtitle { "text": "IT SHALL BE DONE", "color": "aqua", "bold": true }

effect give @s nausea 12 1 true

# The end is here
execute if score @s goldark.effect_timer.holy_sickness matches 3050..3075 run stopsound @s

execute if score @s goldark.effect_timer.holy_sickness matches 3100 unless block ~ ~-1 ~ #replaceable run summon tnt ~ ~1 ~
execute if score @s goldark.effect_timer.holy_sickness matches 3100 if block ~ ~-1 ~ #replaceable run summon fireball ~ ~0.5 ~ { ExplosionPower: 7, HasBeenShot: 1b, Motion: [0.0, -0.5, 0.0] }

# The end is within
execute if score @s goldark.effect_timer.holy_sickness matches 3200..3220 run playsound entity.ghast.hurt player @s ~ ~ ~ 0.8 0.7

execute if score @s goldark.effect_timer.holy_sickness matches 3200..4200 run playsound block.nether_wart.break player @a[distance=..16] ~ ~ ~ 0.8 0.7
execute if score @s goldark.effect_timer.holy_sickness matches 3200..4200 run particle dust{ color: 9442838, scale: 0.5 } ~ ~1 ~ .3 .3 .3 1 10

execute if score @s goldark.effect_timer.holy_sickness matches 3200..4200 run effect give @s slowness 90 2 false
execute if score @s goldark.effect_timer.holy_sickness matches 3200..4200 as @e[distance=..2] run damage @s 4 magic


# The end and beyond
execute if score @s goldark.effect_timer.holy_sickness matches 4444.. run function goldark:effects/holy_sickness/purity