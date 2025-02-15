## * Gives the caller a Remover Stick, Golden Arcane's solution to banishing unwanted mobs.
## * As of v0.5.0, also works with players. Beware.
## * 
## * Last modified: February 13th, 2025 (AydenTFoxx)


give @s debug_stick[ \
            attribute_modifiers={ modifiers: [ { slot: "mainhand", id: "goldark:remover_stick/armor", amount: 20.0f, operation: "add_multiplied_total", type: "armor" }, { slot: "mainhand", id: "goldark:remover_stick/armor_toughness", amount: 200.0f, operation: "add_multiplied_total", type: "armor_toughness" }, { slot: "mainhand", "id": "goldark:remover_stick/attack_speed", amount: 2.0f, operation: "add_multiplied_base", type: "attack_speed" } ], show_in_tooltip: false }, \
            custom_data={ goldark.items.remover_stick: true }, \
            item_name='{ "text": "Remover Stick", "color": "red" }', \
            enchantment_glint_override=true, \
            lore=[ '{ "text": "\\"Ban Hammer\'s lesser cousin.\\"", "color": "gray", "italic": false }' ] \
        ]