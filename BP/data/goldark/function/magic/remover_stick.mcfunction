## * Erases the touched entity from existence; Works funky with Slimes and Magma Cubes.
## * 
## * Last modified: December 4th, 2024 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark:use_item/remover_stick

# Tag victim (assumed nearest hurt entity)
tag @n[type=!player, nbt={ HurtTime: 10s }, distance=..12] add goldark.temp.remove_by_stick

# Display audiovisual feedback
execute at @n[tag=goldark.temp.remove_by_stick, distance=..12] run playsound entity.generic.explode neutral @a[distance=..16] ~ ~ ~ 0.5 1.2
execute at @n[tag=goldark.temp.remove_by_stick, distance=..12] run playsound particle.soul_escape neutral @a[distance=..16] ~ ~ ~ 1.5 0.8

execute at @n[tag=goldark.temp.remove_by_stick, distance=..12] run particle explosion ~ ~0.5 ~ .0 .0 .0 1.0 1
execute at @n[tag=goldark.temp.remove_by_stick, distance=..12] run particle soul ~ ~1 ~ .0 .0 .0 0.05 5

# Remove entity
data merge entity @n[tag=goldark.temp.remove_by_stick, distance=..12] { Health: 0.0f, DeathTime: 20s }