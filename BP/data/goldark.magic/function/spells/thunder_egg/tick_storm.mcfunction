## * Runs the Storm Cloud's behavior, causing severe lag, loss of houses, and chaos everywhere.
## * (Storm not included; Kinda)
## * 
## * Last modified: January 24th, 2025 (AydenTFoxx)


## VISUALS

# Rotate cloud
tp @s ~ ~ ~ ~20 ~

# Display flying particles
particle smoke ^ ^-4 ^6 .5 .5 .5 0.1 12
particle smoke ^ ^-6 ^-6 .5 .5 .5 0.1 12

# Display "cloud" particles
particle electric_spark ~ ~ ~ 4.0 0.0 4.0 0.1 40
particle electric_spark ~ ~ ~ 4.0 0.0 4.0 0.1 20 force

particle large_smoke ~ ~ ~ 4.0 0.5 4.0 0.01 40
particle large_smoke ~ ~ ~ 4.0 0.5 4.0 0.01 20 force

particle dripping_water ~ ~ ~ 4.0 0.5 4.0 0.5 40

#execute if dimension goldark:abyss run particle crit ~ ~ ~ 2.0 1.0 2.0 0.5 12

# Play audio
execute if score @s[tag=goldark.temp.switch_sounds] goldark.ability_clock matches 10..20 run playsound ambient.soul_sand_valley.additions neutral @a[distance=..32] ~ ~ ~ 2 0.8 0.5
execute if score @s[tag=goldark.temp.switch_sounds] goldark.ability_clock matches 10..20 run tag @s remove goldark.temp.switch_sounds

execute if score @s[tag=!goldark.temp.switch_sounds] goldark.ability_clock matches 10..20 run playsound ambient.soul_sand_valley.mood neutral @a[distance=..16] ~ ~ ~ 2 0.8 0.5
execute if score @s[tag=!goldark.temp.switch_sounds] goldark.ability_clock matches 10..20 run tag @s add goldark.temp.switch_sounds


## BEHAVIOR

# Move to nearest entity
execute at @n[type=!#goldark:magic_immune, type=!chicken, distance=..64] positioned ~ ~8 ~ facing entity @s eyes positioned as @s run tp @s ^ ^ ^-1

# Fall to the ground
execute if block ~ ~-8.5 ~ #goldark:breathable run tp @s ~ ~-0.5 ~


# Apply effects on touch
effect give @e[type=!#goldark:magic_immune, type=!chicken, distance=..8, dy=4] blindness 4 1 false
effect give @e[type=!#goldark:magic_immune, type=!chicken, distance=..4, dy=2] wither 1 4 false

#execute if dimension goldark:abyss run effect give @e[type=!#goldark:magic_immune, type=!chicken, distance=..12, dy=8] blindness 8 1 false
#execute if dimension goldark:abyss run effect give @e[type=!#goldark:magic_immune, type=!chicken, distance=..12, dy=8] wither 4 1 false


# Tick Clock
scoreboard players operation @s goldark.ability_clock += #goldark_tick_rate goldark.dummy
#execute if dimension goldark:abyss run scoreboard players operation @s goldark.ability_clock += #goldark_tick_rate goldark.dummy

# Apply Levitation
execute if score @s goldark.ability_clock matches 30..35 if predicate goldark:misc/random_25 run effect give @e[type=!#goldark:magic_immune, distance=8..14, limit=6, sort=random] levitation 2 10 true
execute if score @s goldark.ability_clock matches 90..95 if predicate goldark:misc/random_25 run effect give @e[type=!#goldark:magic_immune, distance=8..24, limit=8, sort=random] levitation 1 15 true
execute if score @s goldark.ability_clock matches 120..125 if predicate goldark:misc/random_25 run effect give @e[type=!#goldark:magic_immune, distance=8..14, limit=4, sort=random] levitation 1 8 true

# Summon lightning
execute if score @s goldark.ability_clock matches 1..10 if predicate goldark:misc/random_10 as @n[type=!#goldark:magic_immune, type=!chicken, limit=2, distance=..14] at @s run function goldark.magic:spells/thunder_egg/summon_thunder
execute if score @s goldark.ability_clock matches 60..70 if predicate goldark:misc/random_25 as @n[type=!#goldark:magic_immune, type=!chicken, limit=4, distance=..14, sort=random] at @s run function goldark.magic:spells/thunder_egg/summon_thunder
execute if score @s goldark.ability_clock matches 100..110 if predicate goldark:misc/random_10 as @n[type=!#goldark:magic_immune, type=!chicken, limit=2, distance=..14, sort=random] at @s run function goldark.magic:spells/thunder_egg/summon_thunder

# Reset Clock
scoreboard players set @s[scores={ goldark.ability_clock=120.. }] goldark.ability_clock 0


# Tick Timer
scoreboard players add @s goldark.ability_timer 1

# Remove Self
#execute if dimension goldark:abyss unless entity @s[scores={ goldark.ability_timer=600.. }] run return 0
kill @s[type=#goldark:technical, scores={ goldark.ability_timer=400.. }]