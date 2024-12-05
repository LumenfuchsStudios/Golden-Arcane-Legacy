## * Makes an Effect incompatible with another (custom or otherwise).
## * 
## * Last modified: November 29th, 2024 (AydenTFoxx)

## ? MACRO Arguments:
#? effect_id: The effect to be checked against. If the target does have it, the function fails.


# Custom Effect Check
$execute if entity @s[tag=goldark.effects.$(effect_id)] run return fail

# Vanilla Effect Check
$execute if entity @s[nbt={ active_effects: [ { id: $(effect_id) } ] }] run return fail

return 1