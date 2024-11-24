## # AydenTFoxx @ September 25th, 2024

# * Plays one of a random selection of music tracks, mostly discs, in the Heavens dimension.

# ? Run by: Player [scores: { goldark.effect_clock: 9995 }]


stopsound @s music

execute store result score @s goldark.dummy run random value 1..10


execute if score @s goldark.dummy matches 1 run playsound music_disc.creator master @s ~ ~ ~ 2 1 0.8

execute if score @s goldark.dummy matches 2 run playsound music_disc.creator_music_box master @s ~ ~ ~ 2 1 0.8

execute if score @s goldark.dummy matches 3 run playsound music_disc.mellohi master @s ~ ~ ~ 2 1 0.8

execute if score @s goldark.dummy matches 4 run playsound music_disc.otherside master @s ~ ~ ~ 2 1 0.8

execute if score @s goldark.dummy matches 5 run playsound music_disc.precipice master @s ~ ~ ~ 2 1 0.8

execute if score @s goldark.dummy matches 6..8 run playsound music.menu ambient @s ~ ~ ~ 2 1 0.8

execute if score @s goldark.dummy matches 9..10 run playsound music.overworld.flower_forest ambient @s ~ ~ ~ 2 1 0.8


scoreboard players reset @s goldark.dummy

scoreboard players set @s goldark.ability_clock 4000