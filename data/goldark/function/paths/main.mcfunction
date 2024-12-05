## * Module Manager: Arcane PATHS
## * Paths of magic which grant special abilities as well as unique spells to its users.
## * 
## * Last modified: December 4th, 2024 (AydenTFoxx)


## WEREWOOF

# Run Werewoof behavior & traits
execute as @e[type=!#goldark:magic_immune, tag=goldark.paths.werewoof] at @s run function goldark:paths/werewoof/update

# Prevent player-less Wolf morphs
execute as @n[type=wolf, tag=goldark.dummy_morph.werewoof] at @s unless entity @n[tag=goldark.path_transformed, tag=!goldark.dummy_morph.werewoof, distance=..2] run kill @s