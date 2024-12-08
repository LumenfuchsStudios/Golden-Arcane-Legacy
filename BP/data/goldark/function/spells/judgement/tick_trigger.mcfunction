particle end_rod ~ ~ ~ .05 .05 .05 0.05 3 force

execute if block ^ ^ ^0.8 #goldark:walkable run tp @s ^ ^ ^0.8
execute unless block ^ ^ ^0.8 #goldark:walkable run function goldark:spells/judgement/init

scoreboard players add @s goldark.ability_timer 1
kill @s[type=#goldark:technical, scores={ goldark.ability_timer=100.. }]