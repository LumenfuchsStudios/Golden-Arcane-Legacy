## # AydenTFoxx @ September 16th - 25th, 2024

# * GIVE Charm: Abyss Warp -- A basic function to return a spell when its casting fails.

# ? Run by: Player [on Base spell "fail" Function]


give @s knowledge_book[ \
            item_name='{ "translate": "goldark.spells.charms.abyss_warp", "italic": false }', \
            lore=[ '{ "translate": "goldark.spells.charms.abyss_warp.lore", "color": "blue" }' ], \
            enchantment_glint_override=true, \
            rarity="uncommon", \
            recipes=[ \
                "goldark:spells/charms/abyss_warp/trigger" \
            ] \
        ]