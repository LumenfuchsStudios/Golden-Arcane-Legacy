## * Creates a scarecrow up to three blocks from the player's facing direction
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Revoke triggers
advancement revoke @s only goldark.magic:internal/build_structure/scarecrow

# Summon scarecrow -- has a range of up to three blocks
execute anchored eyes positioned ^ ^ ^1 unless function goldark.magic:magic/scarecrow/create \
        positioned ^ ^ ^1 unless function goldark.magic:magic/scarecrow/create \
        positioned ^ ^ ^1 run function goldark.magic:magic/scarecrow/create