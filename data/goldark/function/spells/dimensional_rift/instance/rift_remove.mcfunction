## # AydenTFoxx @ September 22nd - 23rd, 2024

# * Removes a Dimensional Rift, replacing it by a flower.
# * If the flower can't be placed, it is dropped instead.

# ? Run by: Armor Stand


playsound block.beacon.deactivate block @a[distance=..16] ~ ~ ~ 1 0.8

particle explosion ~ ~ ~ 0.0 0.0 0.0 1 1 force

particle portal ~ ~ ~ 0.1 0.1 0.1 0.5 50 force


execute if block ~ ~ ~ #air if block ~ ~-1 ~ #dirt run setblock ~ ~ ~ allium

execute unless block ~ ~ ~ allium run summon item ~ ~ ~ { Item: { id: allium, components: { enchantment_glint_override: true, rarity: "uncommon" } } }


kill @n[type=marker, tag=goldark.dimensional_rift, distance=..1]

kill @s