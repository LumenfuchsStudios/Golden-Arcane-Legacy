## # AydenTFoxx @ September 22nd - 25th, 2024

# * Sets a Dimensional Rift's target dimension based on its goldark.dummy score.
# * If said score is not recognized in a valid range, the Rift is invalid and thus unstable; The code exits with a fail state.

# ? Run by: Marker [tag: goldark.dimensional_rift]


execute unless score @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..1] goldark.dummy matches 0..4 run return run function goldark:spells/dimensional_rift/instance/fail_set_dimension

execute if score @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..1] goldark.dummy matches 0 run \
    data modify entity @s data.goldark.dimensional_rift.target_dimension set value "goldark:heavens"

execute if score @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..1] goldark.dummy matches 1 run \
    data modify entity @s data.goldark.dimensional_rift.target_dimension set value "minecraft:overworld"

execute if score @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..1] goldark.dummy matches 2 run \
    data modify entity @s data.goldark.dimensional_rift.target_dimension set value "minecraft:the_nether"

execute if score @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..1] goldark.dummy matches 3 run \
    data modify entity @s data.goldark.dimensional_rift.target_dimension set value "minecraft:the_end"

execute if score @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..1] goldark.dummy matches 4 run \
    data modify entity @s data.goldark.dimensional_rift.target_dimension set value "goldark:abyss"


playsound entity.experience_orb.pickup block @a[distance=..16] ~ ~ ~ 1 1.5

particle glow ~ ~ ~ 0.1 0.1 0.1 0.5 10 force

particle enchant ~ ~ ~ 0.1 0.1 0.1 0.5 25 force

title @p actionbar { "translate": "goldark.tools.rift_threader.set_dimension", "with": [ { "entity": "@s", "nbt": "data.goldark.dimensional_rift.target_dimension" } ] }