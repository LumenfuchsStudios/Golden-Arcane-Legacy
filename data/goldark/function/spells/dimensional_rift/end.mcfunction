## # AydenTFoxx @ September 15th - 25th, 2024

# * Dimensional Rift (END) - Creates a rift in space-time to allow quick travel between dimensions.

# ? Run by: Marker [tag: goldark.run_spell.dimensional_rift, score: { goldark.ability_timer: 0 }]


particle explosion ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5 force
particle end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0.5 20 force

playsound block.end_portal.spawn block @a[distance=..16] ~ ~ ~ 1 1.5


summon armor_stand ~ ~ ~ { Invisible: 1b, Invulnerable: 1b, Small: 1b, NoGravity: 1b, ShowArms: 1b, CustomName: '{ "translate": "goldark.spells.dimensional_rift" }', Tags: [ goldark.dimensional_rift ], DisabledSlots: 4063232 }

execute summon marker run data merge entity @s { data: { goldark: { dimensional_rift: { target_dimension: "minecraft:overworld", target_pos: "~ ~ ~" } } }, Tags: [ goldark.dimensional_rift ] }

execute store result score @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..1] goldark.dummy run function goldark:spells/dimensional_rift/instance/get_dimension

execute as @n[type=marker, tag=goldark.dimensional_rift, distance=..1] run function goldark:spells/dimensional_rift/instance/set_dimension