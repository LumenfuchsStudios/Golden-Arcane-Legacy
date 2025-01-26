## * Teleports the user to the given coordinates.
## * 
## * Last modified: January 25th, 2025 (AydenTFoxx)

##? MACRO Arguments:
#? x, y, z: The coordinates to teleport the player to.


# Detect if position is valid
$execute positioned ~$(x) ~$(y) ~$(z) if block ~ ~ ~ #goldark:breathable if block ~ ~1 ~ #goldark:breathable \
        unless block ~ ~-1 ~ #goldark:breathable run tag @s add goldark.cauldron.teleport_player

# Display particles
$execute if entity @s[tag=goldark.cauldron.teleport_player] positioned ~$(x) ~$(y) ~$(z) run particle portal ~ ~0.5 ~ 0.1 0.2 0.1 0.8 24

# Teleport player
$execute if entity @s[tag=goldark.cauldron.teleport_player] run teleport @s ~$(x) ~$(y) ~$(z)


# Remove success tag
tag @s[tag=goldark.cauldron.teleport_player] remove goldark.cauldron.teleport_player