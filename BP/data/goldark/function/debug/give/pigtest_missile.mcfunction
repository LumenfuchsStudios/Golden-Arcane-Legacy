## * Gives the user a stronger Pigtest item.
## * ...Perhaps there are some regrets.
## * 
## * Last modified: January 30th, 2025 (AydenTFoxx)


give @s snowball[ \
    item_name='{ "text": "Pig", "color": "aqua" }', \
    lore=[ '{ "text": "???????", "color": "gray", "italic": false }' ], \
    rarity=rare, \
    enchantment_glint_override=true, \
    custom_data={ goldark.items.pig_strong: true }, \
    use_cooldown={ seconds: 1, cooldown_group: "goldark:pigtest" } \
]