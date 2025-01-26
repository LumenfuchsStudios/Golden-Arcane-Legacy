## * Rolls a random coordinate set in a 8-block radius, then teleports the nearest player there.
## * 
## * Last modified: January 25th, 2025 (AydenTFoxx)


# Roll random coordinates
execute store result storage goldark:settings cauldron.random_tp.x int 1.0 run random value -8..8
execute store result storage goldark:settings cauldron.random_tp.y int 1.0 run random value -4..4
execute store result storage goldark:settings cauldron.random_tp.z int 1.0 run random value -8..8

# Teleport nearest player
function goldark.magic:spellcraft/cauldron/utils/teleport_player with storage goldark:settings cauldron.random_tp

# Remove coordinates
data remove storage goldark:settings cauldron.random_tp