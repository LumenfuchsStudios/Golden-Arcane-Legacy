## * Returns a transformed Werewoof back to their human form.
## * The Wolf morph is assumed to have already been removed beforehand.
## * 
## * Last modified: November 30th, 2024 (AydenTFoxx)


# Return gamemode (assumed?)
gamemode survival

# Display visual feedback
playsound block.candle.extinguish player @a[distance=..4] ~ ~ ~ 0.8 0.8
particle smoke ~ ~0.5 ~ .3 .5 .3 0.05 30

# Remove tag
tag @s remove goldark.path_transformed