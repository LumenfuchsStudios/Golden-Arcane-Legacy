## * ...But it never perished.
## * 
## * Last modified: January 2nd, 2025 (AydenTFoxx)


## VISUAL

execute anchored eyes run particle large_smoke ^ ^ ^0.2 .05 .15 .05 0.01 4 force

particle reverse_portal ~ ~ ~ 1 0 1 0 3


## TICK

# Remove nearby mobs
execute on target if entity @s[type=!#goldark:magic_immune, type=!player, tag=!goldark.entity.abyss_shadow] run damage @s 20 generic_kill by @n[type=#undead, tag=goldark.entity.abyss_shadow, distance=..4]


# Tick clock
scoreboard players operation @s goldark.ability_timer -= #goldark_tick_rate goldark.dummy

# Display final visual feedback
execute if score @s goldark.ability_timer matches ..0 run effect give @a[distance=..16] darkness 8 0
execute if score @s goldark.ability_timer matches ..0 run playsound ambient.crimson_forest.mood hostile @a[distance=..32] ~ ~ ~ 1 0.2 0.2


# Remove self
tp @s[scores={ goldark.ability_timer=..0 }] ~ -999 ~

kill @s[type=!player, scores={ goldark.ability_timer=..0 }]