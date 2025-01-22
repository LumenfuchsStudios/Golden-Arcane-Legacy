## * Gives the caller a Remover Stick, Golden Arcane's solution to banishing unwanted mobs.
## * As of v0.5.0, also works with players. Beware.
## * 
## * Last modified: January 21st, 2025 (AydenTFoxx)


give @s stick[ \
            attribute_modifiers={ modifiers: [ { id: "goldark:remover_stick/armor", amount: 20.0f, operation: "add_multiplied_total", type: "armor" }, { id: "goldark:remover_stick/armor_toughness", amount: 200.0f, operation: "add_multiplied_total", type: "armor_toughness" }, { "id": "goldark:remover_stick/attack_speed", amount: 2.0f, operation: "add_multiplied_base", type: "attack_speed" } ], show_in_tooltip: false }, \
            custom_data={ goldark.items.remover_stick: true }, \
            custom_name='{ "text": "Remover Stick", "color": "red", "italic": false }', \
            enchantment_glint_override=true, \
            lore=[ '{ "text": "\\"Ban Hammer\'s lesser cousin.\\"", "color": "gray", "italic": false }' ] \
        ]