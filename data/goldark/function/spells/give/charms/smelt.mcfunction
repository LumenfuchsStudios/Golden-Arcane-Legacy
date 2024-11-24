## # AydenTFoxx @ September 16th - 25th, 2024

# * GIVE Charm: Smelt -- A basic function to return a spell when its casting fails.

# ? Run by: Player [on Base spell "fail" Function]


give @s knowledge_book[ \
            item_name='{ "translate": "goldark.spells.charms.smelt", "italic": false }', \
            lore=[ \
                '{ "translate": "goldark.spells.charms.smelt.lore.1", "color": "blue" }', \
                '{ "translate": "goldark.spells.charms.smelt.lore.2", "color": "gray" }' \
            ], \
            enchantment_glint_override=true, \
            rarity="uncommon", \
            recipes=[ \
                "goldark:spells/charms/smelt/trigger" \
            ] \
        ]