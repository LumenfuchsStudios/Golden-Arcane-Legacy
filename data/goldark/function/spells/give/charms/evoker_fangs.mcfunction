## # AydenTFoxx @ September 25th, 2024

# * GIVE Charm: Evoker Fangs -- A basic function to return a spell when its casting fails.

# ? Run by: Player [on Base spell "fail" Function]


give @s knowledge_book[ \
            item_name='{ "translate": "goldark.spells.charms.evoker_fangs", "italic": false }', \
            lore=[ '{ "translate": "goldark.spells.charms.evoker_fangs.lore", "color": "blue" }' ], \
            enchantment_glint_override=true, \
            rarity="uncommon", \
            recipes=[ \
                "goldark:spells/charms/evoker_fangs/trigger" \
            ] \
        ]