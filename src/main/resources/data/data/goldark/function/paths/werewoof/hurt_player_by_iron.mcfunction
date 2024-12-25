## * Inflicts extra harm upon a Werewoof being hit by an Iron weapon.
## * 
## * Last modified: December 22nd, 2024 (AydenTFoxx)


# Revoke trigger
advancement revoke @s[type=player] only goldark:paths/werewoof/hurt_player_by_iron

# Ignore if under the Purity effect
execute if entity @s[tag=goldark.effects.purity] run return fail


# Convert into Absorption if player is Holy-immune
execute if entity @s[tag=goldark.perks.holy_immune] run return run effect give @s absorption 4 0 true


# Apply damage
damage @s 1 on_fire

# Inflict effect
effect give @s poison 3 0