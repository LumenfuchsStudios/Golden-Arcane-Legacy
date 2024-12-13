## * Finishes the Lycanthropy Rite, converting the nearest player into a Werewoof.
## * 
## * Last modified: December 10th, 2024 (AydenTFoxx)


# Display audiovisual feedback
execute if entity @p[tag=!goldark.paths.werewoof, tag=!goldark.path_transformed] run playsound block.end_portal.spawn block @a[distance=..16] ~ ~ ~ 1 0.8 0.5
execute if entity @p[tag=!goldark.paths.werewoof, tag=!goldark.path_transformed] run particle explosion_emitter ~ ~1 ~ 1.0 1.0 1.0 1.0 2

# Convert target
execute as @p[tag=!goldark.paths.werewoof, tag=!goldark.path_transformed] at @s run function goldark:tools/lycanthropy/convert_self

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