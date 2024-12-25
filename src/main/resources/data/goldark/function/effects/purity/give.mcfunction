## * Removes all effects plus the user's Arcane Path.
## * 
## * Last modified: December 23rd, 2024 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark:internal/use_item/potion/purity


# Revoke custom effects
function goldark:effects/consume_milk

# Remove all status effects
effect clear @s

# Grant Nausea instead
effect give @s nausea 8 0 true