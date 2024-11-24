## # AydenTFoxx @ September 25th, 2024

# * Periodically runs ABYSS' unique traits, such as ambience, effects and occasional events.

# ? Run by: Dimensions Function Manager


scoreboard players add #goldark:abyss goldark.effect_clock 1

execute if score #goldark:abyss goldark.effect_clock matches 100 run effect give @a[distance=0.., tag=!goldark.debug.no_abyss_darkness] darkness 12 1 true
execute if score #goldark:abyss goldark.effect_clock matches 100 run effect give @a[distance=0.., tag=!goldark.paths.dark_aligned] weakness 12 1 true

execute if score #goldark:abyss goldark.effect_clock matches 100 run scoreboard players set #goldark:abyss goldark.effect_clock 0


execute in goldark:abyss as @a[distance=0..] at @s run function goldark:dimensions/abyss/ambience

execute in goldark:abyss as @e[type=illusioner, distance=0.., tag=goldark.abyss_illusion] at @s run function goldark:dimensions/abyss/illusion_tick