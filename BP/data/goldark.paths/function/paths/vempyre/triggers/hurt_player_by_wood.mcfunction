## * Inflicts extra harm upon a Vempyre being hit by a wooden weapon.
## * 
## * Last modified: February 15th, 2025 (AydenTFoxx)


# Revoke trigger
advancement revoke @s[type=player] only goldark.paths:paths/vempyre/trigger/hurt_player_by_wood

# Ignore if under the Purity effect
execute if entity @s[tag=goldark.effects.purity] run return fail


# Convert into Regeneration if player is Holy-immune
execute if entity @s[tag=goldark.perks.holy_immune] run return run effect give @s regeneration 4 1 true


# Apply damage
damage @s 2 magic

# Inflict effect
effect give @s wither 4 1