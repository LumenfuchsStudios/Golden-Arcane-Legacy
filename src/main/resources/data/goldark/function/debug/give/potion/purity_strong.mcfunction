## * Gives the user a Purity potion.
## * 
## * Last modified: December 25th, 2024 (AydenTFoxx)

# Merry Christmas!
# Happy Holidays :)


give @s potion[ \
        custom_data={ goldark.potions.purity: true }, \
        lore=[ '{ "text": "* \\"A sip is final.\\"", "color": "red", "italic": false }' ], \
        rarity="rare", \
        potion_contents={ \
            custom_color: 16185295, \
            custom_name: "purity", \
            custom_effects: [ \
                { \
                    id: "goldark:purity", \
                    amplifier: 4, \
                    ambient: true, \
                    duration: 240 \
                }, \
                { \
                    id: "luck", \
                    ambient: true, \
                    duration: 1, \
                    show_icon: false, \
                    show_particles: false \
                } \
            ] \
        }, \
        use_cooldown={ seconds: 12 } \
    ]