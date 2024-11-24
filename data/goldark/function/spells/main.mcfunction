## # AydenTFoxx - September 9th - 18th, 2024

# * Main Function for all spell's instantiation and running behavior.

# ? Run by: GoldArk's Core Functions Manager


## SPELL MANAGEMENT (Database, Cooldown)
execute as @a[scores={ goldark.use_spell=1.. }] at @s run function goldark:spells/database

scoreboard players remove @a[scores={ goldark.ability_timer=1.. }] goldark.ability_timer 1
scoreboard players reset @a[scores={ goldark.ability_timer=0 }] goldark.ability_timer


## Spells:

# Dimensional Rift
execute as @e[type=marker, tag=goldark.run_spell.dimensional_rift] at @s run function goldark:spells/dimensional_rift/run

execute as @e[type=armor_stand, tag=goldark.dimensional_rift] at @s run function goldark:spells/dimensional_rift/instance/tick

# Weather : Clear, Rain, Thunder
execute as @e[type=marker, tag=goldark.run_spell.weather.clear] at @s run function goldark:spells/weather/run { weather: "clear" }
execute as @e[type=marker, tag=goldark.run_spell.weather.rain] at @s run function goldark:spells/weather/run { weather: "rain" }
execute as @e[type=marker, tag=goldark.run_spell.weather.thunder] at @s run function goldark:spells/weather/run { weather: "thunder" }