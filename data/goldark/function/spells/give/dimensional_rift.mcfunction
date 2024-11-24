## # AydenTFoxx @ September 16th - 25th, 2024

# * GIVE Dimensional Rift -- A basic function to return a spell when its casting fails.

# ? Run by: Player [on Base spell "fail" Function]


give @s knowledge_book[ \
            item_name='{ "translate": "goldark.spells.dimensional_rift", "italic": false }', \
            lore=[ \
                '{ "translate": "goldark.spells.dimensional_rift.lore.1", "color": "blue" }', \
                '{ "translate": "goldark.spells.dimensional_rift.lore.2", "color": "gray" }' \
            ], \
            enchantment_glint_override=true, \
            rarity="epic", \
            recipes=[ \
                "goldark:spells/dimensional_rift/trigger" \
            ] \
        ]