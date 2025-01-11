## * Runs behavior every tick after the player drinks a Potion of Purity.
## * 
## * Last modified: December 23rd, 2024 (AydenTFoxx)


# Apply funni noises
execute if predicate goldark:misc/random_10 if predicate goldark:misc/random_10 if predicate goldark:misc/random_33 \
        anchored eyes facing entity @s feet run playsound ambient.nether_wastes.mood hostile @s ^ ^1 ^2 1 0.8

# Remove all effects
effect clear @s

# Remove once Holy Numbness runs out
execute if score @s goldark.effect_timer.holy_numbness matches ..1 run tag @s remove goldark.effects.purity