## * Erases the touched entity from existence; Works funky with Slimes and Magma Cubes.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark:internal/use_item/remover_stick

# Tag victim (assumed nearest hurt entity)
tag @n[nbt={ HurtTime: 10s }, distance=1..12] add goldark.temp.remove_by_stick

# If victim is one of a select few "strong" mobs, a stronger function is called instead.
execute if entity @n[type=#goldark:magic_immune, tag=goldark.temp.remove_by_stick, distance=1..12] run return run function goldark:tools/remover_stick/overkill
execute if entity @n[type=interaction, tag=dummy_lib.entity.dummy, tag=dummy_lib.entity.is_hurt, distance=1..12] run return 0


# Display audiovisual feedback
execute at @n[tag=goldark.temp.remove_by_stick, distance=1..12] run playsound entity.generic.explode neutral @a[distance=..16] ~ ~ ~ 0.5 1.2
execute at @n[tag=goldark.temp.remove_by_stick, distance=1..12] run playsound particle.soul_escape neutral @a[distance=..16] ~ ~ ~ 1.5 0.8

execute at @n[tag=goldark.temp.remove_by_stick, distance=1..12] run particle explosion ~ ~0.5 ~ .0 .0 .0 1.0 1
execute at @n[tag=goldark.temp.remove_by_stick, distance=1..12] run particle soul ~ ~1 ~ .0 .0 .0 0.05 5

# Remove entity
data merge entity @n[type=!player, tag=goldark.temp.remove_by_stick, distance=1..12] { Health: 0.0f, DeathTime: 20s }

damage @n[type=player, tag=goldark.temp.remove_by_stick, distance=1..12] 32767 bad_respawn_point

tag @a[tag=goldark.temp.remove_by_stick, distance=1..12] remove goldark.temp.remove_by_stick