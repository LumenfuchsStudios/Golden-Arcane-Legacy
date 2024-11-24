## # AydenTFoxx @ September 25th, 2024

# * Obtains a Rift's current Dimension's numerical ID (in Golden Arcane's measurement)
# * If the Rift is not in a recognized Dimension, it defaults to Minecraft's Overworld.

# ? Run by: Armor Stand [tag: goldark.dimensional_rift]


execute if data entity @s { Dimension: "goldark:heavens" } run return 0

execute if data entity @s { Dimension: "minecraft:overworld" } run return 1

execute if data entity @s { Dimension: "minecraft:the_nether" } run return 2

execute if data entity @s { Dimension: "minecraft:the_end" } run return 3

execute if data entity @s { Dimension: "goldark:abyss" } run return 4


# Defaults to Overworld
return 1