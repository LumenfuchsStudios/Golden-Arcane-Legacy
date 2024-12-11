## * Gives the caller a Holy Numbness/Protection Potion.
## * 
## * Last modified: December 10th, 2024 (AydenTFoxx)


give @s potion[ \
            custom_data={ \
                goldark.potions.holy_numbness: true \
            }, \
            custom_name="{ \"text\": \"Holy Protection Potion\", \"italic\": false }", \
            lore=[ "{ \"text\": \"Protects against Holy ailments.\", \"color\": \"gray\", \"italic\": false }" ], \
            rarity="uncommon", \
            potion_contents={ \
                custom_color: 8055035, \
                custom_effects: [ \
                    { \
                        id: "absorption", \
                        ambient: true, \
                        amplifier: 1, \
                        duration: 1800, \
                        hidden_effect: { \
                            id: "regeneration", \
                            duration: 120, \
                            show_icon: false, \
                            show_particles: false \
                        } \
                    } \
                ] \
            } \
        ]