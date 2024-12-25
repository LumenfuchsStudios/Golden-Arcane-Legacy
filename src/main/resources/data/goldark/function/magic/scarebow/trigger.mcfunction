## * Creates a scarebow up to three blocks from the player's facing direction
## * 
## * Last modified: December 21st, 2024 (AydenTFoxx)


# Remove triggers
advancement revoke @s only goldark:internal/build_structure/scarebow_shear
advancement revoke @s only goldark:internal/build_structure/scarebow_place

# Summon scarebow -- has a range of up to three blocks
execute anchored eyes positioned ^ ^ ^1 unless function goldark:magic/scarebow/create \
        positioned ^ ^ ^1 unless function goldark:magic/scarebow/create \
        positioned ^ ^ ^1 run function goldark:magic/scarebow/create