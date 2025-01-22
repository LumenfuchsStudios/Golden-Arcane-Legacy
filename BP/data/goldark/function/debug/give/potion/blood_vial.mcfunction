## * Gives the user a Vial of Blood with default effects.
## * 
## * Last modified: January 13th, 2025 (AydenTFoxx)


give @s potion[ \
    custom_data={ goldark.items.blood_vial: true }, \
    potion_contents={ \
        custom_color: 5966346, \
        custom_name: "blood", \
        custom_effects: [ \
            { id: "darkness", ambient: true, duration: 200 }, \
            { id: "unluck", ambient: true, duration: 120 } \
        ] \
    } \
]