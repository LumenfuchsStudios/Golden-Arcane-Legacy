## # AydenTFoxx @ September 25th, 2024

# * Ticks down an Illusion's timer, removing it once it reaches zero.
# * Also has particle effects marking its presence and removal.

# ? Run by: Illusioner [tag: goldark.abyss_illusion]


execute unless score @s goldark.ability_timer matches 0.. run scoreboard players set @s goldark.ability_timer 101

scoreboard players remove @s goldark.ability_timer 1


particle smoke ~ ~0.5 ~ .1 .5 .1 .01 2 force

execute if score @s goldark.ability_timer matches ..20 run particle large_smoke ~ ~0.5 ~ .1 .5 .1 .05 3 force

execute if score @s goldark.ability_timer matches ..0 run playsound entity.skeleton_horse.death hostile @a[distance=..24] ~ ~ ~ 0.5 0.5 0.2

execute if score @s goldark.ability_timer matches ..0 run particle soul_fire_flame ~ ~ ~ .3 .5 .3 .05 20 force


tp @s[scores={ goldark.ability_timer=..0 }] ~ -256 ~

kill @s[scores={ goldark.ability_timer=..0 }]