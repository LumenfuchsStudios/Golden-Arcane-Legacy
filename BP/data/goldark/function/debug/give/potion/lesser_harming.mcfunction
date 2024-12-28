## * Gives the caller a Lesser Harming potion.
## * 
## * Last modified: December 21st, 2024 (AydenTFoxx)


give @s potion[ \
            potion_contents={ \
                custom_color: 10517843, \
                custom_name: "lesser_harming", \
                custom_effects: [ \
                    { \
                        id: poison, \
                        amplifier: 0, \
                        duration: 300 \
                    } \
                ] \
            } \
        ]