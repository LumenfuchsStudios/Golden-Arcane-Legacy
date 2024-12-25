## * Gives the caller a Lesser Healing potion.
## * 
## * Last modified: December 21st, 2024 (AydenTFoxx)


give @s potion[ \
            potion_contents={ \
                custom_color: 16532065, \
                custom_name: "lesser_healing", \
                custom_effects: [ \
                    { \
                        id: "regeneration", \
                        amplifier: 0, \
                        duration: 400 \
                    } \
                ] \
            } \
        ]