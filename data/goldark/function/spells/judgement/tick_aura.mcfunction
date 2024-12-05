tp @s ~ ~ ~ ~10 ~

particle soul_fire_flame ^ ^0.5 ^2 .1 .1 .1 0.01 2
particle soul_fire_flame ^ ^0.5 ^-2 .1 .1 .1 0.01 2
particle soul_fire_flame ^2 ^0.5 ^ .1 .1 .1 0.01 2
particle soul_fire_flame ^-2 ^0.5 ^ .1 .1 .1 0.01 2

particle end_rod ~ ~0.5 ~ .1 .1 .1 0.05 2


scoreboard players add @s goldark.ability_clock 1

execute if score @s goldark.ability_clock matches 50..80 if predicate goldark:misc/random_25 run playsound block.portal.ambient block @a[distance=..16] ~ ~ ~ 0.8 1.2

scoreboard players set @s[scores={ goldark.ability_clock=100.. }] goldark.ability_clock 0


tag @e[type=!#goldark:magic_immune, tag=!goldark.perks.holy_immune, tag=!goldark.holy_sickness.active, distance=..3] add goldark.holy_sickness.active_judgement
tag @e[type=!#goldark:magic_immune, tag=!goldark.perks.holy_immune, tag=!goldark.holy_sickness.active, distance=..3] add goldark.holy_sickness.active

scoreboard players add @e[type=!#goldark:magic_immune, tag=!goldark.perks.holy_immune, distance=..3] goldark.effect_timer.holy_sickness 4

scoreboard players set @e[type=#undead, tag=!goldark.perks.holy_immune, scores={ goldark.effect_timer.holy_sickness=..1000 }, distance=..3] goldark.effect_timer.holy_sickness 1200
scoreboard players add @e[type=#undead, tag=!goldark.perks.holy_immune, distance=..3] goldark.effect_timer.holy_sickness 8

execute at @e[type=!#goldark:magic_immune, tag=goldark.holy_sickness.active, distance=..3] run particle portal ~ ~1 ~ .1 .2 .1 0.5 3


scoreboard players add @s goldark.ability_timer 1

execute if score @s goldark.ability_timer matches 970 run playsound block.portal.trigger block @a[distance=..16] ~ ~ ~ 0.8 1.2

execute if score @s goldark.ability_timer matches 980.. run particle enchant ~ ~ ~ .0 .0 .0 1 5
execute if score @s goldark.ability_timer matches 995.. run particle flash ~ ~ ~ .0 .0 .0 1 1

execute if score @s goldark.ability_timer matches 1000.. run playsound block.fire.extinguish block @a[distance=..16] ~ ~ ~ 0.8 0.8

kill @s[scores={ goldark.ability_timer=1000.. }]