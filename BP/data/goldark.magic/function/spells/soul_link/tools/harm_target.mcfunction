## * Harms the targeted mob by a Soul Link if it falls on harmful blocks.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)

## ? MACRO Arguments:
# ? target: The GUID of the entity to be affected.


## FIERY

# Magma Block
$execute if block ~ ~-1 ~ magma_block run damage @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=..256] 1 on_fire

# Fires
$execute if block ~ ~ ~ fire run damage @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=..256] 1 in_fire
$execute if block ~ ~ ~ soul_fire run damage @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=..256] 2 in_fire

$execute if block ~ ~ ~ #fire run data modify entity @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=..256] Fire set value 120s

# Lava
$execute if block ~ ~ ~ #goldark:misc/lava run damage @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=..256] 2 in_fire
$execute if block ~ ~ ~ #goldark:misc/lava run data modify entity @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=..256] Fire set value 240s


## WATER

execute if block ~ ~ ~ #goldark:misc/water store result score @s goldark.ambient_clock run data get entity @s Air
execute if block ~ ~ ~ #goldark:misc/water store result entity @s Air short 1.0 run scoreboard players remove @s goldark.ambient_clock 1

$execute if block ~ ~ ~ #goldark:misc/water if score @s goldark.ambient_clock matches ..-20 \
         run damage @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=..256] 1 drown

execute if block ~ ~ ~ #goldark:misc/water if score @s goldark.ambient_clock matches ..-20 \
        run scoreboard players set @s goldark.ambient_clock 0


## CACTI

# Cactus(es)
$execute if block ~ ~ ~ cactus run damage @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=..256] 1 cactus


## OTHER/ANY

# Consume durability
execute if block ~ ~ ~ #goldark:misc/dangerous unless block ~ ~ ~ #goldark:misc/water run function goldark.magic:spells/soul_link/tools/reduce_durability

execute if block ~ ~ ~ #goldark:misc/water if score @s goldark.ambient_clock matches 0 \
        if predicate goldark:misc/random_33 \
        run function goldark.magic:spells/soul_link/tools/reduce_durability

execute if block ~ ~-1 ~ magma_block if predicate goldark:misc/random_50 \
        run function goldark.magic:spells/soul_link/tools/reduce_durability