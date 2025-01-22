## * Removes particularly powerful mobs from all reality, adding an extra flair to their erasing.
## * Has a compatibility behavior for the Dummy entity of a certain unnamed datapack.
## * 
## * Last modified: January 15th, 2025 (AydenTFoxx)


# Tag ??? ("crossover" with Dummy datapack)
tag @n[type=interaction, tag=lumenfuchs.entity.dummy, tag=lumenfuchs.dummy.is_hurt, distance=1..12] add goldark.temp.remove_by_stick

# Tag boss entities
tag @n[type=#goldark:magic_immune, nbt={ HurtTime: 10s }, distance=1..12] add goldark.temp.remove_by_stick


# Display audiovisual feedback
execute at @n[tag=goldark.temp.remove_by_stick, distance=1..12] run summon lightning_bolt

execute at @n[tag=goldark.temp.remove_by_stick, distance=1..12] run particle explosion ~ ~ ~ 0.0 0.0 0.0 1.0 1
execute at @n[type=!interaction, tag=goldark.temp.remove_by_stick, distance=1..12] run particle explosion_emitter ~ ~ ~ 0.0 0.0 0.0 1.0 1

execute at @n[tag=goldark.temp.remove_by_stick, distance=1..12] run playsound entity.ender_dragon.hurt master @a[distance=..32] ~ ~ ~ 1 0.4 0.2
execute at @n[tag=goldark.temp.remove_by_stick, distance=1..12] run playsound entity.wither.death master @a[distance=..32] ~ ~ ~ 1 1.5 0.2


# Remove entity (Dummy)
tag @n[type=interaction, tag=goldark.temp.remove_by_stick, distance=1..12] add lumenfuchs.dummy.is_dead

# Remove entity (other)
data merge entity @n[type=!interaction, tag=goldark.temp.remove_by_stick, distance=1..12] { Health: 0.0f, DeathTime: 20s }