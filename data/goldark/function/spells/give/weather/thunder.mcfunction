## # AydenTFoxx @ September 16th - 25th, 2024

# * GIVE Weather: Thunderstorm -- A basic function to return a spell when its casting fails.

# ? Run by: Player [on Base spell "fail" Function]


give @s knowledge_book[ \
            item_name='{ "translate": "goldark.spells.weather.thunder", "italic": false }', \
            lore=[ '{ "translate": "goldark.spells.weather.thunder.lore", "color": "blue" }' ], \
            enchantment_glint_override=true, \
            rarity="rare", \
            recipes=[ \
                "goldark:spells/weather/thunder/trigger" \
            ] \
        ]