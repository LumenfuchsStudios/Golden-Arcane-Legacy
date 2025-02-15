## * Gives the user a Vial of Werepyrism, a debug-only item for turning oneself into a Werewoof-Vempyre hybrid.
## * Has a mild reference to the Bewitchment mod's wiki; Can you see it?
## * 
## * Last modified: January 26th, 2025 (AydenTFoxx)


give @s potion[ \
    enchantment_glint_override=true, \
    rarity=epic, \
    lore=[ '{ "text": "+Lycanthropy", "color": "blue", "italic": false }', '{ "text": "+Vempyrism", "color": "red", "italic": false }', '{ "text": "" }', '{ "text": "\\"But why would you?\\"", "color": "gray", "italic": false }' ], \
    custom_data={ goldark.potions.werepyrism: true }, \
    potion_contents={ \
        custom_color: 5771910, \
        custom_name: "werepyrism", \
        custom_effects: [ \
            { id: "bad_omen", ambient: true, amplifier: 4, duration: 300 }, \
            { id: "unluck", ambient: true, amplifier: 2, duration: 300 }, \
        ] \
    } \
]