## * Creates a "Magic Cauldron" at the given position.
## * 
## * Last modified: January 25th, 2025 (AydenTFoxx)


# Ignore if no cauldron
execute unless block ~ ~ ~ #cauldrons run return fail

# Create "portal" block within cauldron
execute align xyz run summon block_display ~ ~1.315 ~ { block_state: { Name: "nether_portal" }, Rotation: [ 0.0f, 90.0f ], Tags: [ goldark.block.cauldron ] }


# Display audiovisual feedback
playsound block.end_portal.spawn block @a[distance=..32] ~ ~ ~ 0.8 0.8 0.1

execute align xyz run particle explosion ~0.5 ~0.5 ~0.5 0.0 0.0 0.0 1 1
execute align xyz run particle end_rod ~0.5 ~0.5 ~0.5 0.1 0.1 0.1 0.1 12