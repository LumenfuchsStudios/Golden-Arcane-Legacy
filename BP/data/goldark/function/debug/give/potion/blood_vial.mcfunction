## * Gives the user a Vial of Blood with default effects.
## * 
## * Last modified: December 27th, 2024 (AydenTFoxx)


give @s potion[ \
    potion_contents={ \
        custom_color: 5966346, \
        custom_name: "blood", \
        custom_effects: [ \
            { id: "darkness", ambient: true, duration: 400 }, \
            { id: "unluck", ambient: true, duration: 1 } \
        ] \
    } \
]