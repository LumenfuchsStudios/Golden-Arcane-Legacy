## * Initializes the Essence of Purity's unique behavior.
## * 
## * Last modified: January 25th, 2025 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark.magic:internal/use_item/essence_white


# Summon projectile
summon marker ~ ~2 ~ { Tags: [ goldark.dummy_magic.essence_white ] }

# Get player's rotation
data modify entity @n[type=marker, tag=goldark.dummy_magic.essence_white, distance=..2] Rotation set from entity @s Rotation


# Display audiovisual feedback
playsound block.amethyst_cluster.hit player @a[distance=..16] ~ ~ ~ 1.0 1.2
particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0.1 8