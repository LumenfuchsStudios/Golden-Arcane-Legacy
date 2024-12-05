## * Instantiates a powerful yet brief storm within a Thunderous Egg.
## * 
## * Last modified: December 3rd, 2024 (AydenTFoxx)


# Summon Dummy AEC
summon marker ~ ~ ~ { \
        Tags: [ goldark.dummy_spell.thunder_egg ], \
        CustomName: "{ \"text\": \"Storm Cloud\" }" \
    }

# Storm sold separately.
weather thunder 1200t

# Kaboom
particle explosion_emitter ~ ~ ~ .0 .0 .0 1.0 1

# Remove Self (Thunderous Egg)
kill @s[type=#goldark:technical]