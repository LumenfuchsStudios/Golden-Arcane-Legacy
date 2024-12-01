## * Grants a custom Golden Arcane Effect with the specified arguments.
## * 
## * Last modified: November 29th, 2024 (AydenTFoxx)

## ? MACRO Arguments:
#? effect_id: The effect's identifier, typically its name in lowercase.
#? duration: The duration for the effect, measured in ticks. Set to -1 for infinite.

# Set Duration
$scoreboard players add @s goldark.effect_timer.$(effect_id) $(duration)

# Apply Effect (& Amplifier)
$tag @s add goldark.effects.$(effect_id)