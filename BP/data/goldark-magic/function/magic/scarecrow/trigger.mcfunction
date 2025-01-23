## * Creates a scarecrow up to three blocks from the player's facing direction
## * 
## * Last modified: December 19th, 2024 (AydenTFoxx)


# Remove triggers
advancement revoke @s only goldark:internal/build_structure/scarecrow_shear
advancement revoke @s only goldark:internal/build_structure/scarecrow_place

# Summon scarecrow -- has a range of up to three blocks
execute anchored eyes positioned ^ ^ ^1 unless function goldark:magic/scarecrow/create \
        positioned ^ ^ ^1 unless function goldark:magic/scarecrow/create \
        positioned ^ ^ ^1 run function goldark:magic/scarecrow/create