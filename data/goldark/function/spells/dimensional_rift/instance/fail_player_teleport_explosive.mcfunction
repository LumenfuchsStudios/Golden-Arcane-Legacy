## # AydenTFoxx @ September 23rd - 25th, 2024

# * Fails a teleportation with a destructive explosion, destroying the Rift and harming nearby mobs.
# * An alternative fail Function for when a Rift is unstable/points to an invalid dimension.

# ? Run by: Player [on Rift teleport fail, kaboom version]


execute as @e[type=!armor_stand, distance=..4] run damage @s 30 goldark:unstable_rift by @n[type=armor_stand, tag=goldark.dimensional_rift]

summon fireball ~ ~ ~ { ExplosionPower: 5, Motion: [ 0.0, -4.0, 0.0 ] }

execute as @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..3] run return run function goldark:spells/dimensional_rift/instance/rift_remove