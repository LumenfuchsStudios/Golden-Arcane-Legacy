## * Module Manager: SPELLCRAFT
## * Magics and arcane traits which are extracted by the user to create their own spells.
## * 
## * Last modified: January 25th, 2025 (AydenTFoxx


## Update cauldrons
execute as @e[type=block_display, tag=goldark.block.cauldron] at @s align y positioned ~0.5 ~-0.5 ~0.5 run function goldark.magic:spellcraft/cauldron/update


## ESSENCES

# White (Essence of Purity)
execute as @e[type=marker, tag=goldark.dummy_magic.essence_white] at @s run function goldark.magic:spellcraft/essences/white/tick