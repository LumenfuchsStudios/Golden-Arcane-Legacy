## * Finishes the Lycanthropy Rite, converting the nearest player into a Werewoof.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Display audiovisual feedback
playsound block.end_portal.spawn block @a[distance=..16] ~ ~ ~ 1 0.8 0.5
particle explosion_emitter ~ ~1 ~ 1.0 1.0 1.0 1.0 2

# Convert target
execute unless entity @n[type=item, nbt={ Item: { components: { "minecraft:custom_data": { goldark.items.soul_link: true } } } }, distance=..8] \
        as @p at @s run function goldark-paths:tools/lycanthropy/convert

execute if entity @n[type=item, nbt={ Item: { components: { "minecraft:custom_data": { goldark.items.soul_link: true } } } }, distance=..8] \
        run function goldark-magic:rituals/lycanthropy/convert_target with entity @n[type=item, nbt={ Item: { components: { "minecraft:custom_data": { goldark.items.soul_link: true } } } }] Item.components.minecraft:custom_data.goldark.soul_link


# Break center blocks
setblock ~ ~ ~ air destroy
setblock ~ ~-1 ~ air destroy

# Convert blocks, again
setblock ~ ~-1 ~2 air
setblock ~ ~-1 ~-2 air
setblock ~2 ~-1 ~ air
setblock ~-2 ~-1 ~ air

setblock ~ ~-2 ~2 coal_block
setblock ~ ~-2 ~-2 coal_block
setblock ~2 ~-2 ~ coal_block
setblock ~-2 ~-2 ~ coal_block

# Call upon lightning again
summon lightning_bolt ~ ~-1 ~

# Remove self
kill @s[type=#goldark:technical]