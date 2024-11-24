## # AydenTFoxx @ September 15th - 25th, 2024

# * Abyss Warp - Teleports the user to the Abyss dimensional layer.

# * As a protection measure (due to the Abyss' highly unstable worldgen and unforgivable nature),
# * the player is temporarily immune to all damage upon joining the dimension.

# ? Magic Type: CHARM [1 tick | 8 Will]
# ? Path: Dark-oriented
# ? Dimension: Any but ABYSS

# ? Run by: Player [Charm]


recipe take @s goldark:spells/charms/abyss_warp/trigger


execute unless entity @s[tag=goldark.paths.dark_type] unless score @s goldark.will_self matches 8.. run return run function goldark:spells/base/fail { fail_type: "will", spell_path: "charms/abyss_warp" }

execute if entity @s[tag=goldark.paths.dark_type] unless score @s goldark.will_self matches 4.. run return run function goldark:spells/base/fail { fail_type: "will", spell_path: "charms/abyss_warp" }

execute if dimension goldark:abyss run return run function goldark:spells/base/fail { fail_type: "dimension", spell_path: "charms/abyss_warp" }


execute if predicate goldark:is_sneaking positioned ^ ^1 ^6 as @e[type=!player, type=!marker, type=!armor_stand, distance=..4] at @s run \
    return run function goldark:spells/charms/abyss_warp


playsound ambient.cave player @a[distance=..16] ~ ~ ~ 0.8 0.5

particle portal ~ ~0.5 ~ 0.1 0.5 0.1 0.1 20 force


effect give @s resistance 8 4 true

execute in goldark:abyss run tp @s ~ ~ ~