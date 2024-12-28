## * Grants the caller a set amount of Holy Numbness.
## * 
## * Last modified: December 11th, 2024 (AydenTFoxx)


# Remove trigger
advancement revoke @s only goldark:internal/use_item/potion/holy_numbness

# Display visual feedback
particle end_rod ~ ~1 ~ .1 .1 .1 0.05 10

# Set effect timer
scoreboard players set @s goldark.effect_timer.holy_numbness 1800