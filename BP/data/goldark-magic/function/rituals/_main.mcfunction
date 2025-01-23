## * Module Manager: RITUALS
## * Physical management of energies around oneself for a given purpose.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


## Lycanthropy
execute as @e[type=#goldark:technical, tag=goldark.dummy_ritual.lycanthropy] at @s if loaded ~ ~ ~ run function goldark-magic:rituals/lycanthropy/tick

## Lycanthropy Reversal
execute as @e[type=#goldark:technical, tag=goldark.dummy_ritual.lycanthropy_revert] at @s if loaded ~ ~ ~ run function goldark-magic:rituals/lycanthropy_revert/tick