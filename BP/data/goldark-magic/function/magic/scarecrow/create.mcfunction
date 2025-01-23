## * Creates a Scarecrow entity, replacing the carved pumpkin block on its position.
## * 
## * Last modified: December 20th, 2024 (AydenTFoxx)


# Ignore if another scarecrow exists there
execute if entity @n[type=#goldark:technical, tag=goldark.entity.scarecrow, distance=..1] run return 1


# Summon entity (the pumpkin head itself)
execute if block ~ ~ ~ carved_pumpkin align xyz run summon item_display ~0.5 ~0.5 ~0.5 { item_display: "head", item: { id: "carved_pumpkin" }, Invulnerable: 1b, Tags: [ goldark.entity.scarecrow ] }
execute if block ~ ~ ~ jack_o_lantern align xyz run summon item_display ~0.5 ~0.5 ~0.5 { item_display: "head", item: { id: "jack_o_lantern" }, Invulnerable: 1b, Tags: [ goldark.entity.scarecrow , goldark.scarecrow.perma_jol ] }

# Get player rotation
execute positioned ~2 ~-1 ~ if entity @s[distance=..2] positioned ~-2 ~1 ~ run scoreboard players set @n[type=item_display, tag=goldark.entity.scarecrow, distance=..1] goldark.dummy 1
execute positioned ~-2 ~-1 ~ if entity @s[distance=..2] positioned ~2 ~1 ~ run scoreboard players set @n[type=item_display, tag=goldark.entity.scarecrow, distance=..1] goldark.dummy 2
execute positioned ~ ~-1 ~2 if entity @s[distance=..2] positioned ~ ~1 ~-2 run scoreboard players set @n[type=item_display, tag=goldark.entity.scarecrow, distance=..1] goldark.dummy 3
execute positioned ~ ~-1 ~-2 if entity @s[distance=..2] positioned ~ ~1 ~2 run scoreboard players set @n[type=item_display, tag=goldark.entity.scarecrow, distance=..1] goldark.dummy 4

# Default to south
execute as @n[type=item_display, tag=goldark.entity.scarecrow, distance=..1] unless score @s goldark.dummy matches 1.. \
        run scoreboard players set @s goldark.dummy 3


# Display audiovisual feedback
playsound particle.soul_escape block @a[distance=..12] ~ ~ ~ 0.8 1.5

execute if block ~ ~ ~ carved_pumpkin run particle flame ~ ~0.5 ~ .1 .1 .1 0.1 20
execute if block ~ ~ ~ jack_o_lantern run particle soul_fire_flame ~ ~0.5 ~ .1 .1 .1 0.1 20

# Remove block
execute if block ~ ~ ~ carved_pumpkin run setblock ~ ~ ~ air
execute if block ~ ~ ~ jack_o_lantern run setblock ~ ~ ~ light[level=15]