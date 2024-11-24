## # AydenTFoxx @ September 22nd - 25th, 2024

# * Updates a Dimensional Rift's target dimension, based on Layers, defined by the "set_dimension" Function.
# * Has a score limit of 1 beyond the last registered dimension, allowing unstable Rifts to be created.

# ? Run by: Player [on Rift interaction]


execute if entity @s[advancements={ goldark:internal/spells/dimensional_rift/lower_layer=true }] as @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..4] unless score @s goldark.dummy matches 5.. run scoreboard players add @s goldark.dummy 1

execute if entity @s[advancements={ goldark:internal/spells/dimensional_rift/upper_layer=true }] as @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..4] unless score @s goldark.dummy matches ..-1 run scoreboard players remove @s goldark.dummy 1


advancement revoke @s[advancements={ goldark:internal/spells/dimensional_rift/lower_layer=true }] only goldark:internal/spells/dimensional_rift/lower_layer

advancement revoke @s[advancements={ goldark:internal/spells/dimensional_rift/upper_layer=true }] only goldark:internal/spells/dimensional_rift/upper_layer


execute as @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..4] at @s as @n[type=marker, tag=goldark.dimensional_rift, distance=..1] run function goldark:spells/dimensional_rift/instance/set_dimension