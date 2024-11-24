## # AydenTFoxx @ September 23rd - 25th, 2024

# * Stores a Rift's CustomName as an ID to connect it with another Dimensional Rift.

# ? Run by: Armor Stand [tag: goldark.dimensional_rift]


tag @s add goldark.dimensional_rift.connect


data modify entity @s HandItems[0].components.minecraft:custom_data.goldark.dimensional_rift.connection_id set from entity @s CustomName

data modify entity @s HandItems[0].components.minecraft:lore prepend value '{ "translate": "goldark.tools.rift_threader.connect", "color": "yellow", "with": [ { "entity": "@s", "nbt": "data.goldark.dimensional_rift.connection_id" }] }'

data modify entity @s HandItems[0].components.minecraft:enchantment_glint_override set value true


playsound entity.experience_orb.pickup block @a[distance=..16] ~ ~ ~ 1 1.5

particle happy_villager ~ ~ ~ 0.1 0.1 0.1 0.1 20