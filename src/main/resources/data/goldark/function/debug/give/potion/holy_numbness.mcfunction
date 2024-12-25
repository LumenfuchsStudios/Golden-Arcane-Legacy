## * Gives the caller a Holy Numbness/Protection potion.
## * 
## * Last modified: December 21st, 2024 (AydenTFoxx)


give @s potion[ \
            custom_data={ \
                goldark.potions.holy_numbness: true \
            }, \
            lore=[ "{ \"text\": \"+Holy Numbness\", \"color\": \"blue\", \"italic\": false }" ], \
            rarity="uncommon", \
            potion_contents={ \
                custom_color: 8055035, \
                custom_name: "holy_numbness", \
                custom_effects: [ \
                    { \
                        id: "absorption", \
                        ambient: true, \
                        amplifier: 1, \
                        duration: 1800 \
                    } \
                ] \
            } \
        ]