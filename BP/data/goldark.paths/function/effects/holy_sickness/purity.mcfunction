## * PURITY: Thy actions have been seen and rewarded. No more burny Iron for ya.
## ? Not to be confused with the Purity effect; This rather grants the Holy Immunity perk.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Grant Holy Sickness immunity
function goldark.paths:perks/holy_immunity


# Remove olden effects
effect clear @s darkness
effect clear @s slowness

# Mend thy wounds
effect give @s resistance 30 0
effect give @s regeneration 30 0

# Display audiovisual feedback
particle explosion_emitter ~ ~0.5 ~ .5 .5 .5 1 1 force
particle totem_of_undying ~ ~ ~ .1 .1 .1 0.5 50

playsound entity.wither.death master @s ~ ~ ~ 0.8 2

# Display message
tellraw @s { "text": "The Gods take notice of your endurance...", "color": "gold", "italic": true }
tellraw @s [{ "text": "[+] You are now immune to ", "color": "aqua" }, { "text": "Holy Sickness", "color": "yellow", "bold": true }]


# Give Holy Sickness spell
give @s gold_nugget[ \
            enchantment_glint_override=true, \
            rarity="rare", \
            item_name="[{ \"text\": \"Spell: Judgement\" }]", \
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
            custom_data={ "goldark.spells.judgement": true } \
        ] 12

# Remove Holy Sickness
scoreboard players set @s goldark.effect_timer.holy_sickness 0

tag @s remove goldark.holy_sickness.active

tag @s remove goldark.holy_sickness.pure_block
tag @s remove goldark.holy_sickness.pure

tag @s remove goldark.holy_sickness.based