## * Conjures an electrical discharge at the Thunder Egg's position.
## * 
## * Last modified: December 3rd, 2024 (AydenTFoxx)


# Summon lightning
summon lightning_bolt ~ ~ ~

# Display visual feedback (lightning is too loud)
particle end_rod ~ ~0.5 ~ .1 .1 .1 0.1 10 force

# Remove self
kill @s[type=#goldark:technical]