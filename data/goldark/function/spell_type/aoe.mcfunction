## * Generates an Area-of-Effect (AoE) around the caster. Logical detection only.
## * 
## * 
## * Last modified: November 30th, 2024

## ? MACRO Arguments:
#? spell_id: The identifier of the spell. Typically its lowercased name.
#? range: The radius to which check for trespassing entities.


# Detect & add tag to entity
$tag @e[type=!#goldark:magic_immune, distance=..$(range)] add goldark.spell_aoe.$(spell_id)