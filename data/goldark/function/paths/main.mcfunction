## * Module Manager: Arcane PATHS
## * Paths of magic which grant special abilities as well as unique spells to its users.
## * 
## * Last modified: November 30th, 2024 (AydenTFoxx)


## WEREWOOF

# Run Werewoof behavior & traits
execute as @a[tag=goldark.path.werewoof] at @s run function goldark:paths/werewoof/update

# Prevent player-less Wolf morphs
execute as @n[type=wolf, tag=goldark.dummy_morph.werewoof] at @s unless entity @n[type=player, tag=goldark.path_transformed, distance=..2] run kill @s