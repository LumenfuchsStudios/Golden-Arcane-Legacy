## # AydenTFoxx @ September 15th - 25th, 2024

# * Center function to manage Golden Arcane's custom dimensions' behaviors.

# ? Run by: GoldArk's Core Function Manager


# Heavens
execute in goldark:heavens if entity @a[distance=0..] run function goldark:dimensions/heavens/tick

# The ABYSS
execute in goldark:abyss if entity @a[distance=0..] run function goldark:dimensions/abyss/tick

execute as @a[scores={ goldark.effect_clock=1.. }] \
        unless entity @s[nbt={ Dimension: "goldark:heavens" }] \
        unless entity @s[nbt={ Dimension: "goldark:abyss" }] \
        run scoreboard players reset @s goldark.effect_clock