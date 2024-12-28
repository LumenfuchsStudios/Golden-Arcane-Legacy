## * Module Manager: SPELLS
## * Single-use magics which produce unique effects upon the world.
## * 
## * Last modified: December 3rd, 2024 (AydenTFoxx)


## JUDGEMENT (spells/judgement)

# Tick Dummies
execute as @e[type=marker, tag=goldark.dummy_magic.judgement_trigger] at @s if loaded ~ ~ ~ run function goldark:spells/judgement/tick_trigger
execute as @e[type=marker, tag=goldark.dummy_spell.judgement] at @s if loaded ~ ~ ~ run function goldark:spells/judgement/tick_aura


## THUNDER EGG (spells/thunder_egg)

# Detect held Thunder Egg
execute as @a if items entity @s weapon.* egg[custom_data~{ goldark.items.thunder_egg: 1b }] run tag @s add goldark.temp.held_thunder_egg
execute as @a if items entity @s weapon.* egg[custom_data~{ goldark.items.thunder_egg_strong: 1b }] run tag @s add goldark.temp.held_thunder_egg_strong

# Remove non-Thunder egg score
scoreboard players reset @a[scores={ goldark.used_item.egg=1.. }, tag=!goldark.temp.held_thunder_egg, tag=!goldark.temp.held_thunder_egg_strong] goldark.used_item.egg

# Transform thrown egg
execute as @a[scores={ goldark.used_item.egg=1 }, tag=goldark.temp.held_thunder_egg] run scoreboard players add @s goldark.used_item.egg 1
execute as @a[scores={ goldark.used_item.egg=1.. }, tag=goldark.temp.held_thunder_egg_strong] run scoreboard players add @s goldark.used_item.egg 2

execute as @a[scores={ goldark.used_item.egg=1.. }] at @s if loaded ~ ~ ~ positioned ~ ~1 ~ run function goldark:spells/thunder_egg/init_projectile

# Remove Egg tag
execute as @a unless items entity @s weapon.* egg[custom_data~{ goldark.items.thunder_egg: 1b }] run tag @s remove goldark.temp.held_thunder_egg
execute as @a unless items entity @s weapon.* egg[custom_data~{ goldark.items.thunder_egg_strong: 1b }] run tag @s remove goldark.temp.held_thunder_egg_strong


# Tick Dummies
execute as @e[type=#goldark:technical, tag=goldark.dummy_magic.thunder_egg] at @s if loaded ~ ~ ~ run function goldark:spells/thunder_egg/tick_projectile
execute as @e[type=#goldark:technical, tag=goldark.dummy_spell.thunder_egg] at @s if loaded ~ ~ ~ run function goldark:spells/thunder_egg/tick_storm


## SOUL LINK (spells/soul_link)

# Update item
execute as @e[type=item, nbt={ Item: { components: { "minecraft:custom_data": { goldark.items.soul_link: true } } } }] at @s if loaded ~ ~ ~ run function goldark:spells/soul_link/update