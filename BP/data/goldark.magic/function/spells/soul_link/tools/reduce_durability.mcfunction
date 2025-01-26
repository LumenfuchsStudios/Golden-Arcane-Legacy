## * Reduces the Soul Link's durability. If it reaches 0, the item "breaks" and is destroyed.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Get item count
execute store result score @s goldark.dummy run data get entity @s Item.count

# Reduce durability
execute store result score @s goldark.ability_clock run data get entity @s Item.components.minecraft:custom_data.goldark.soul_link.uses
execute store result entity @s Item.components.minecraft:custom_data.goldark.soul_link.uses int 1.0 run scoreboard players remove @s goldark.ability_clock 1

execute if block ~ ~ ~ #goldark:misc/dangerous unless block ~ ~ ~ #goldark:misc/water \
        store result entity @s Item.components.minecraft:custom_data.goldark.soul_link.uses int 1.0 run scoreboard players set @s goldark.ability_clock 0

# Remove item
execute if score @s goldark.ability_clock matches ..0 store result entity @s Item.count int 1.0 run scoreboard players remove @s goldark.dummy 1


# Display audiovisual feedback
execute if score @s goldark.ability_clock matches ..0 run playsound block.glass.break neutral @a[distance=..8] ~ ~ ~ 0.7 0.6 0.1
execute if score @s goldark.ability_clock matches ..0 run playsound particle.soul_escape neutral @a[distance=..8] ~ ~ ~ 1 0.8 0.1

execute if score @s goldark.ability_clock matches 1.. run particle white_smoke ~ ~0.25 ~ 0.01 0.1 0.01 0.01 5
execute if score @s goldark.ability_clock matches ..0 run particle white_smoke ~ ~0.25 ~ 0.05 0.15 0.05 0.05 10
execute if score @s goldark.ability_clock matches ..0 run particle soul ~ ~0.33 ~ 0.0 0.5 0.0 0.3 0


# Destroy item if count is zero
execute if score @s goldark.dummy matches 0 run playsound entity.ender_eye.death neutral @a[distance=..8] ~ ~ ~ 1 0.8 0.1

execute if score @s goldark.dummy matches 0 run particle portal ~ ~ ~ 0.1 0.1 0.1 0.8 20
execute if score @s goldark.dummy matches 0 run particle explosion ~ ~ ~ 0.0 0.0 0.0 1.0 1

execute if score @s goldark.dummy matches 0 run kill @s[type=item]