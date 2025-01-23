## * Finishes the Lycanthropy Reversal Rite, curing the nearest Werewoof player.
## * Highly volatile, proceed with caution.
## * 
## * Last modified: December 14th, 2024 (AydenTFoxx)


# Display audiovisual feedback
playsound block.portal.travel block @a[distance=..32] ~ ~ ~ 1 0.8 0.5
particle totem_of_undying ~ ~1 ~ 1.0 1.0 1.0 1.0 20

# Cure target
execute unless entity @n[type=item, nbt={ Item: { components: { "minecraft:custom_data": { goldark.items.soul_link: true } } } }, distance=..8] \
        as @p[tag=goldark.paths.werewoof, distance=..12] at @s run function goldark-paths:tools/lycanthropy/cure

execute if entity @n[type=item, nbt={ Item: { components: { "minecraft:custom_data": { goldark.items.soul_link: true } } } }, distance=..8] \
        run function goldark-magic:rituals/lycanthropy_revert/convert_target with entity @n[type=item, nbt={ Item: { components: { "minecraft:custom_data": { goldark.items.soul_link: true } } } }] Item.components.minecraft:custom_data.goldark.soul_link


# Break pillars
fill ~2 ~ ~2 ~2 ~3 ~2 air destroy
fill ~2 ~ ~-2 ~2 ~3 ~-2 air destroy
fill ~-2 ~ ~2 ~-2 ~3 ~2 air destroy
fill ~-2 ~ ~-2 ~-2 ~3 ~-2 air destroy

# Convert Soul-block below
setblock ~ ~-1 ~ sand


# Explode focus point
summon tnt ~ ~ ~

# Call upon lightning again
summon lightning_bolt ~ ~-1 ~


# Remove self
kill @s[type=#goldark:technical]