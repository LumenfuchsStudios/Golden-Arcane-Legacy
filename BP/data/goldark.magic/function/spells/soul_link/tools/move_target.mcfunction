## * Applies a Soul Link's motion (as an item) to its targeted entity
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)

## ? MACRO Arguments:
# ? target: The GUID of the entity to be affected.


# Move non-player
$data modify entity @n[type=!player, scores={ goldark.guid=$(target) }, distance=..512] Motion set from entity @s Motion

# Fly player upwards (or slow them down)
execute store result score @s goldark.used_item.egg run data get entity @s Motion[1] 3.0

$execute if score @s goldark.used_item.egg matches 1.. run effect clear @n[type=player, scores={ goldark.guid=$(target) }, distance=..512] slowness
$execute if score @s goldark.used_item.egg matches 1.. run effect give @n[type=player, scores={ goldark.guid=$(target) }, distance=..512] levitation 1 9 true

$execute if score @s goldark.used_item.egg matches ..-1 run effect clear @n[type=player, scores={ goldark.guid=$(target) }, distance=..512] levitation
$execute if score @s goldark.used_item.egg matches -2 run effect give @n[type=player, scores={ goldark.guid=$(target) }, distance=..512] slowness 1 3 true


# Reduce durability
execute unless score @s goldark.used_item.egg matches -1 \
        if predicate goldark:misc/random_25 run function goldark.magic:spells/soul_link/tools/reduce_durability