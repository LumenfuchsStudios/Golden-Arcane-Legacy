## # AydenTFoxx @ September 11th - 25th, 2024

# * Smelt - Smelts the user's offhand item, as if putting it in a furnace.

# ? Magic Type: CHARM [1 tick | 4 Will]
# ? Path: Any

# ? Run by: Player [Charm]


recipe take @s goldark:spells/charms/smelt/trigger

execute unless score @s goldark.will_self matches 4.. run return run function goldark:spells/base/fail { fail_type: "will", spell_path: "charms/smelt" }


playsound item.firecharge.use player @s ~ ~ ~ 0.8 0.7

particle flame ~ ~1 ~ 0.1 0.1 0.1 0.05 15


item modify entity @s weapon.offhand goldark:smelt_item