playsound ambient.cave player @a[distance=..12] ~ ~ ~ 0.5 0.2 0.1

particle large_smoke ~ ~ ~ .2 .4 .2 0.01 12
particle end_rod ~ ~ ~ .1 .2 .1 1.0 12

scoreboard players remove @s goldark.ability_timer 100

tag @s add goldark.vempyre.shroud_phase

tp @s ^ ^ ^2