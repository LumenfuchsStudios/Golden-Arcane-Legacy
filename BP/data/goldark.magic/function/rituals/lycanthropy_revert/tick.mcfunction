## * Executes the Ritual of Lycanthropy Reversal, dark rite of reverting the effects of Lycanthropy.
## * 
## * Last modified: December 24th, 2024 (AydenTFoxx)


# Remove self if Soul Lantern is broken
execute unless block ~ ~ ~ soul_lantern run return run kill @s[type=#goldark:technical]

# Remove self if day breaks
execute if score #goldark_time_day goldark.dummy matches 23600.. run return run kill @s[type=#goldark:technical]


# Tick timer
scoreboard players operation @s goldark.ability_clock += #goldark_tick_rate goldark.dummy

# Rotate self
tp @s ~ ~ ~ ~10 ~

# Display particles
particle soul_fire_flame ^ ^ ^0.5 0.0 0.5 0.5 0.1 0
particle soul_fire_flame ^ ^ ^-0.5 0.0 0.5 -0.5 0.1 0
particle soul_fire_flame ^0.5 ^ ^ 0.5 0.5 0.0 0.1 0
particle soul_fire_flame ^-0.5 ^ ^ -0.5 0.5 0.0 0.1 0

particle end_rod ~2 ~3 ~2 0.1 0.1 0.1 0.05 1
particle end_rod ~2 ~3 ~-2 0.1 0.1 0.1 0.05 1
particle end_rod ~-2 ~3 ~2 0.1 0.1 0.1 0.05 1
particle end_rod ~-2 ~3 ~-2 0.1 0.1 0.1 0.05 1

particle smoke ~ ~ ~ 0.1 0.1 0.1 0.1 1

particle smoke ^ ^ ^4 .01 .01 .01 0.05 10 force
particle smoke ^ ^ ^-4 .01 .01 .01 0.05 10 force

# Play audio
scoreboard players add @s goldark.dummy 1

execute if score @s goldark.dummy matches 80 run playsound ambient.basalt_deltas.mood neutral @a[distance=..16] ~ ~ ~ 1 0.5 0.3

scoreboard players reset @s[scores={ goldark.dummy=80.. }] goldark.dummy


# Grant debuffs to all nearby players
effect give @a[distance=..16] darkness 8 1 true
effect give @a[distance=..16] weakness 8 1

# Apply effects to nearest target (or Soul Link, if any)
execute unless entity @n[type=item, nbt={ Item: { components: { "minecraft:custom_data": { goldark.items.soul_link: true } } } }, distance=..8] \
        run function goldark.magic:rituals/lycanthropy_revert/apply_effects_player

execute as @n[type=item, nbt={ Item: { components: { "minecraft:custom_data": { goldark.items.soul_link: true } } } }, distance=..8] \
        run function goldark.magic:rituals/lycanthropy_revert/apply_effects_macro with entity @s Item.components.minecraft:custom_data.goldark.soul_link


# Display final feedback
execute if score @s goldark.ability_clock matches 350 run playsound ambient.soul_sand_valley.additions neutral @a[distance=..32] ~ ~ ~ 1 0.5 0.3
execute if score @s goldark.ability_clock matches 350.. run particle cloud ~ ~1 ~ 1.0 1.0 1.0 0.01 10

execute if score @s goldark.ability_clock matches 370..380 run playsound block.portal.trigger neutral @a[distance=..32] ~ ~ ~ 1 0.8 0.3

# Run final phase
execute if score @s goldark.ability_clock matches 400.. run function goldark.magic:rituals/lycanthropy_revert/end