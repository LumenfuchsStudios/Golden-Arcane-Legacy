## * Removes all effects and temporarily nullifies the user's Arcane Path.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark-paths:internal/use_item/potion/purity


# Revoke custom effects
function goldark-paths:effects/consume_milk

# Remove all status effects
effect clear @s


# Add Purity
scoreboard players set @s goldark.effect_timer.holy_numbness 800

tag @s add goldark.effects.purity