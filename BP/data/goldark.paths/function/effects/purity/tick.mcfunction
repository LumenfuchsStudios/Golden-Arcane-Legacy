## * Runs behavior every tick after the player drinks a Potion of Purity.
## * 
## * Last modified: December 23rd, 2024 (AydenTFoxx)


# Remove all effects
effect clear @s

# Remove once Holy Numbness runs out
execute if score @s goldark.effect_timer.holy_numbness matches ..1 run tag @s remove goldark.effects.purity