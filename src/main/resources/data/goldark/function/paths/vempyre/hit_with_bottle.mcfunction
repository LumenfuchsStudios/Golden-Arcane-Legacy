## * Gives the user a Blood Vial from an injured victim.
## * 
## * Last modified: December 25th, 2024 (AydenTFoxx)

# Happy Holidays! ^^


# Revoke trigger
advancement revoke @s only goldark:paths/vempyre/take_blood/hit_with_bottle

# Ignore if player has the Purity effect
execute if entity @s[tag=goldark.effects.purity] run return fail

# Ignore if target is Undead or non-humanoid, or randomly with a certain rate
execute unless entity @n[type=!#undead, type=!#goldark:humanoid/living, tag=!goldark.paths.vempyre, nbt={ HurtTime: 10s }, distance=..4] \
        unless predicate goldark:misc/random_33 run return fail


# Remove empty bottle
clear @s glass_bottle 1

# Grant bottled blood
summon item ~ ~ ~ { \
    Item: { \
        id: "potion", \
        components: { \
            "potion_contents": { \
                "custom_color": 5966346, \
                "custom_name": "blood", \
            } \
        } \
    }, \
    Tags: [ goldark.vempyre.item_blood_vial ] \
}

# Get active effects from target entity
data modify entity @n[type=item, tag=goldark.vempyre.item_blood_vial, distance=0] Item.components.minecraft:potion_contents.custom_effects set from entity @n[type=#goldark:humanoid/living, nbt={ HurtTime: 10s }, distance=..8] active_effects

# Append Bloodlust & Unluck to final product
data modify entity @n[type=item, tag=goldark.vempyre.item_blood_vial, distance=0] Item.components.minecraft:potion_contents.custom_effects append value { id: "goldark:bloodlust", ambient: true, duration: 400 }
data modify entity @n[type=item, tag=goldark.vempyre.item_blood_vial, distance=0] Item.components.minecraft:potion_contents.custom_effects append value { id: "unluck", ambient: true, duration: 1 }