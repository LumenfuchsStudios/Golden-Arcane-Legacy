## # AydenTFoxx @ September 23rd - 26th, 2024

# * Links two Rifts by their CustomName tag, using the Rift Threader as a storage for the connecting Rift's ID.
# * Only the second Rift is actually updated; 

# ? Run by: Player [on Rift interaction]


item replace entity @s[gamemode=creative] weapon.mainhand with air

execute as @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..5] at @s if data entity @s HandItems[0].components.minecraft:custom_data.goldark.dimensional_rift.connect run \
    function goldark:spells/dimensional_rift/instance/rift_connect with entity @s HandItems[0].components.minecraft:custom_data.goldark.dimensional_rift.connection_id

execute as @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..5] at @s unless entity @s[tag=goldark.dimensional_rift.connect] run \
    function goldark:spells/dimensional_rift/instance/rift_set_link

advancement revoke @s only goldark:internal/spells/dimensional_rift/link_rifts

item replace entity @s weapon.mainhand from entity @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..5] weapon.mainhand

data modify entity @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..5] HandItems[0] set value {}