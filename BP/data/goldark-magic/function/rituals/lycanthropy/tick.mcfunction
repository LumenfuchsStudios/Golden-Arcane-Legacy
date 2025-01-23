## * Executes the Ritual of Lycanthropy, forbidden magic of turning thyself into a Werewoof.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Remove self if Soul Lantern is broken
execute unless block ~ ~ ~ soul_lantern run return run kill @s[type=#goldark:technical]

# Remove self if day breaks
execute if score #goldark_time_day goldark.dummy matches 23600.. run return run kill @s[type=#goldark:technical]


# Tick timer
scoreboard players operation @s goldark.ability_clock += #goldark_tick_rate goldark.dummy

# Rotate self
tp @s ~ ~ ~ ~10 ~

# Display particles
particle soul_fire_flame ~2 ~3 ~2 -0.5 -0.8 -0.5 0.2 0
particle soul_fire_flame ~2 ~3 ~-2 -0.5 -0.8 0.5 0.2 0
particle soul_fire_flame ~-2 ~3 ~2 0.5 -0.8 -0.5 0.2 0
particle soul_fire_flame ~-2 ~3 ~-2 0.5 -0.8 0.5 0.2 0

particle end_rod ~2 ~3 ~2 0.1 0.1 0.1 0.01 1
particle end_rod ~2 ~3 ~-2 0.1 0.1 0.1 0.01 1
particle end_rod ~-2 ~3 ~2 0.1 0.1 0.1 0.01 1
particle end_rod ~-2 ~3 ~-2 0.1 0.1 0.1 0.01 1

particle large_smoke ~2 ~3 ~2 -0.5 -0.8 -0.5 0.08 1
particle large_smoke ~2 ~3 ~-2 -0.5 -0.8 0.5 0.08 1
particle large_smoke ~-2 ~3 ~2 0.5 -0.8 -0.5 0.08 1
particle large_smoke ~-2 ~3 ~-2 0.5 -0.8 0.5 0.08 1

particle smoke ^ ^ ^6 .01 .01 .01 0.01 5 force
particle smoke ^ ^ ^-6 .01 .01 .01 0.01 5 force

# Play audio
scoreboard players add @s goldark.dummy 1

execute if score @s goldark.dummy matches 60 run playsound ambient.cave neutral @a[distance=..16] ~ ~ ~ 1 0.5 0.3

scoreboard players reset @s[scores={ goldark.dummy=60.. }] goldark.dummy


# Grant Darkness
effect give @a[distance=..16] darkness 5 1 true

# Apply effects to nearest target (or Soul Link, if any)
execute unless entity @n[type=item, nbt={ Item: { components: { "minecraft:custom_data": { goldark.items.soul_link: true } } } }, distance=..8] \
        run function goldark-magic:rituals/lycanthropy/apply_effects_player

execute as @n[type=item, nbt={ Item: { components: { "minecraft:custom_data": { goldark.items.soul_link: true } } } }, distance=..8] \
        run function goldark-magic:rituals/lycanthropy/apply_effects_macro with entity @s Item.components.minecraft:custom_data.goldark.soul_link


# Display final particles
execute if score @s goldark.ability_clock matches 250.. run particle end_rod ~ ~-1 ~ .1 .1 .1 0.1 10

# Run final phase
execute if score @s goldark.ability_clock matches 300.. run function goldark-magic:rituals/lycanthropy/end