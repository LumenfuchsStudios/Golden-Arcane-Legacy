## * Runs Werewoof-unique code & behaviors.
## * 
## * Last modified: November 30th, 2024 (AydenTFoxx)


## BEHAVIOR

# Evaluate metal sicknesses
function goldark:paths/werewoof/sickness

# Transform into Wolf
execute if predicate goldark:player_input/sprint if predicate goldark:player_input/backward unless entity @s[tag=goldark.path_transformed] run function goldark:paths/werewoof/morph/transform

# Update Wolf form
execute if entity @s[tag=goldark.path_transformed] run function goldark:paths/werewoof/morph/update