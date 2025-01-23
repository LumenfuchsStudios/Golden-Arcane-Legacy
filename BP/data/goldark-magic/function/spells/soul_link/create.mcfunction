## * Creates a linking item to the user's soul, usable for all sorts of long-ranged magics.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Create item
summon item ~ ~ ~ { \
        Item: { \
                id: quartz, \
                components: {  \
                        item_name: '{ "text": "Soul Shard" }', \
                        lore: [ '{ "text": "Bears a link to another\'s Soul.", "color": "gray", "italic": false }' ], \
                        enchantment_glint_override: true, \
                        rarity: "uncommon", \
                        custom_data: { goldark.items.soul_link: true, goldark: { soul_link: { uses: 256 } } } \
                } \
        }, \
        Tags: [ goldark.temp.init_soul_link ], \
        Motion: [ 0.0, 0.5, 0.0 ] \
}


# Set GUID
execute unless score @s goldark.guid matches 1.. \
        run scoreboard players operation @n[type=item, tag=goldark.temp.init_soul_link, distance=0] goldark.guid = #goldark_guid goldark.guid

execute unless score @s goldark.guid matches 1.. \
        run function goldark:tools/create_guid

# Store GUID
execute store result entity @n[type=item, tag=goldark.temp.init_soul_link, distance=0] Item.components.minecraft:custom_data.goldark.soul_link.target int 1.0 \
        run scoreboard players get @s goldark.guid

# Set tooltip
execute as @n[type=item, tag=goldark.temp.init_soul_link, distance=0] run function goldark-magic:spells/soul_link/set_lore with entity @s Item.components.minecraft:custom_data.goldark.soul_link


# Display audiovisual feedback
playsound entity.experience_orb.pickup neutral @a[distance=..8] ~ ~ ~ 0.8 1.2
particle end_rod ~ ~0.5 ~ .05 .05 .05 0.05 15