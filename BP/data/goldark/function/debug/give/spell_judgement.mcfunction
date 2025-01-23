## * Gives the caller a Judgement spell Item (in-game: "Spell: Judgement").
## * You must have the Holy Immunity perk in order to use this item.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


give @s gold_nugget[ \
            enchantment_glint_override=true, \
            rarity="uncommon", \
            item_name="[{ \"text\": \"Spell: Judgement\" }]", \
            lore=[ "{ \"text\": \"[Artifact]\", \"color\": \"blue\", \"italic\": false }", "{ \"text\": \"A shard of divine smite.\", \"color\": \"gray\", \"italic\": false }" ], \
            consumable={ \
                animation: "bow", \
                consume_seconds: 1.6, \
                has_consume_particles: false, \
                sound: "block.conduit.ambient.short", \
                on_consume_effects: [ \
                    { type: "play_sound", sound: "minecraft:block.note_block.chime" } \
                ] \
            }, \
            custom_data={ "goldark.spells.judgement": true } \
        ] 12