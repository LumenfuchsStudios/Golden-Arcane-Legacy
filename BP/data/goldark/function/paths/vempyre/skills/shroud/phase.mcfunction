playsound ambient.cave player @a[distance=..12] ~ ~ ~ 0.5 0.2 0.1

particle large_smoke ~ ~ ~ .2 .4 .2 0.01 12
particle end_rod ~ ~ ~ .1 .2 .1 0.1 8

scoreboard players remove @s goldark.ability_timer 120

tag @s add goldark.vempyre.shroud_phase

execute positioned ^ ^ ^2 run damage @n[type=!#goldark:magic_immune, type=!#goldark:tameable, tag=!goldark.paths.vempyre, distance=..0.5] 2 player_attack by @s

tp @s ^ ^ ^2