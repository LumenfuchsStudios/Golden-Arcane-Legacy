## # AydenTFoxx @ September 22nd - 25th, 2024

# * Manages the player's interaction with a Rift;
# * Rift Linking has its own function and thus is not linked here.

# ? Run by: Player [on Rift interaction]


# Enter Rift
execute if entity @s[advancements={ goldark:internal/spells/dimensional_rift/enter_rift=true }] store result score @s goldark.dummy run function goldark:spells/dimensional_rift/instance/player_teleport with entity @n[type=marker, tag=goldark.dimensional_rift, distance=..3] data.goldark.dimensional_rift

execute if entity @s[advancements={ goldark:internal/spells/dimensional_rift/enter_rift=true }] if score @s goldark.dummy matches -1 run function goldark:spells/dimensional_rift/instance/fail_player_teleport_explosive

execute if entity @s[advancements={ goldark:internal/spells/dimensional_rift/enter_rift=true }] run scoreboard players reset @s goldark.dummy

advancement revoke @s[advancements={ goldark:internal/spells/dimensional_rift/enter_rift=true }] only goldark:internal/spells/dimensional_rift/enter_rift

# Lower Dimensional Layer
execute if entity @s[advancements={ goldark:internal/spells/dimensional_rift/lower_layer=true }] run function goldark:spells/dimensional_rift/instance/set_layer

# Upper Dimensional Layer
execute if entity @s[advancements={ goldark:internal/spells/dimensional_rift/upper_layer=true }] run function goldark:spells/dimensional_rift/instance/set_layer

# Remove Rift
execute if entity @s[advancements={ goldark:internal/spells/dimensional_rift/remove_rift=true }] as @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..3] at @s run function goldark:spells/dimensional_rift/instance/rift_remove

advancement revoke @s[advancements={ goldark:internal/spells/dimensional_rift/remove_rift=true }] only goldark:internal/spells/dimensional_rift/remove_rift


# Decrease Rift Threader's durability and return it to the player.
execute as @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..3] store result score @s goldark.use_spell run data get entity @s HandItems[0].components.minecraft:damage

scoreboard players remove @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..3] goldark.use_spell 1

execute as @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..3] store result entity @s HandItems[0].components.minecraft:damage int 1.0 run scoreboard players get @s goldark.use_spell

scoreboard players reset @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..3] goldark.use_spell


item replace entity @s[gamemode=!creative] weapon.mainhand from entity @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..3] weapon.mainhand

data modify entity @n[type=armor_stand, tag=goldark.dimensional_rift, distance=..3] HandItems[0] set value {}