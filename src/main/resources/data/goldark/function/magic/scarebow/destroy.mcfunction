## * Removes the scarebow entity and drops its pumpkin as an item.
## * 
## * Last modified: December 19th, 2024 (AydenTFoxx)


# Display audiovisual feedback
playsound block.conduit.deactivate block @a[distance=..12] ~ ~ ~ 1 0.7 0.1

particle explosion ~ ~ ~ 0.0 0.0 0.0 1.0 1
particle portal ~ ~-0.5 ~ 0.05 0.4 0.05 0.8 24

# Drop item
execute unless entity @s[tag=goldark.scarebow.perma_jol] run summon item ~ ~ ~ { Item: { id: "carved_pumpkin" }, Motion: [ 0.0, 0.1, 0.0 ], Tags: [ goldark.scarebow.item ] }
execute if entity @s[tag=goldark.scarebow.perma_jol] run summon item ~ ~ ~ { Item: { id: "jack_o_lantern" }, Motion: [ 0.0, 0.1, 0.0 ], Tags: [ goldark.scarebow.item ] }

# Apply random motion
execute store result entity @n[type=item, tag=goldark.scarebow.item, distance=0] Motion[0] double 0.001 run random value -100..100
execute store result entity @n[type=item, tag=goldark.scarebow.item, distance=0] Motion[2] double 0.001 run random value -100..100


# Remove self
kill @s[type=#goldark:technical]