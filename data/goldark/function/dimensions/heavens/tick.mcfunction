## # AydenTFoxx @ September 25th, 2024

# * Periodically runs Heavens' unique traits, such as ambience and effects.

# ? Run by: Dimensions Function Manager


scoreboard players add #goldark:heavens goldark.effect_clock 1

execute if score #goldark:heavens goldark.effect_clock matches 100 run effect give @a[distance=0.., tag=!goldark.paths.dark_aligned] luck 12 1 true
execute if score #goldark:heavens goldark.effect_clock matches 100 run effect give @a[distance=0.., tag=goldark.paths.light_aligned] health_boost 30 4 true

execute if score #goldark:heavens goldark.effect_clock matches 100 run scoreboard players set #goldark:heavens goldark.effect_clock 0

execute in goldark:heavens as @a[distance=0..] at @s run function goldark:dimensions/heavens/ambience