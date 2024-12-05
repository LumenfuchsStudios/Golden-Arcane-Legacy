## * Gives the caller a Holy Sickness Token (in-game: "Divine Magic: Judgement").
## * Please make sure to be immune to Holy Sickness before attempting to use this.
## * 
## * Last modified: December 4th, 2024 (AydenTFoxx)


give @s gold_nugget[ \
            enchantment_glint_override=true, \
            custom_name="[{ \"text\": \"Divine Magic: \", \"color\": \"yellow\", \"italic\": false }, { \"text\": \"Judgement\", \"color\": \"aqua\" }]", \
            lore=[ "{ \"text\": \"Conjures an aura of divine smite.\", \"color\": \"gray\", \"italic\": false }" ], \
            consumable={ \
                animation: "bow", \
                consume_seconds: 1.6, \
                has_consume_particles: false, \
                sound: "block.conduit.ambient.short", \
                on_consume_effects: [ \
                    { type: "play_sound", sound: "minecraft:block.note_block.chime" } \
                ] \
            }, \
            custom_data={ "goldark.holy_sickness.token": true } \
        ]