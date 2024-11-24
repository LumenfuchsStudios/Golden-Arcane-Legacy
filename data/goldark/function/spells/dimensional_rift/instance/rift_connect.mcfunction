## # AydenTFoxx @ September 23rd - 24th, 2024

# * Connects a Rift to the player's Rift Threader's stored ID.

# ? Requires Args: connection_id
# ? Run by: Armor Stand [tag: goldark.dimensional_rift, goldark.dimensional_rift.connect]


$data modify entity @s data.goldark.dimensional_rift.target_pos set value '@n[name=$(connection_id)]'


data modify entity @s HandItems[0].components.minecraft:custom_data.goldark.dimensional_rift set value {}

data modify entity @s HandItems[0].components.minecraft:lore[0] set value '""'

data modify entity @s HandItems[0].components.minecraft:enchantment_glint_override set value false


playsound entity.player.levelup block @a[distance=..16] ~ ~ ~ 1 1.5

particle totem_of_undying ~ ~ ~ 0.1 0.1 0.1 0.1 20 force


tag @s remove goldark.dimensional_rift.connect
tag @s add goldark.dimensional_rift.connected