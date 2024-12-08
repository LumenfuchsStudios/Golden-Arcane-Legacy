## * Gives the caller a Remover Stick, Golden Arcane's solution to banishing non-player entities.
## * 
## * Last modified: December 4th, 2024 (AydenTFoxx)


give @s debug_stick[ \
            attribute_modifiers={ modifiers: [ { id: "armor", amount: 20.0f, operation: "add_multiplied_total", type: "armor" }, { "id": "attack_speed", amount: 2.0f, operation: "add_multiplied_base", type: "attack_speed" } ], show_in_tooltip: false }, \
            custom_data={ "goldark.items.remover_stick": true }, \
            custom_name="{ \"text\": \"Remover Stick\", \"color\": \"red\", \"italic\": false }", \
            lore=[ "{ \"text\": \"\\\"Ban Hammer's lesser cousin.\\\"\", \"color\": \"gray\", \"italic\": false }" ] \
        ]