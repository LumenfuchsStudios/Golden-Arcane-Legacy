## * Finishes the Lycanthropy Reversal Rite, curing the nearest Werewoof player.
## * Highly volatile, proceed with caution.
## * 
## * Last modified: December 10th, 2024 (AydenTFoxx)


# Display audiovisual feedback
execute if entity @p[tag=goldark.paths.werewoof, distance=..8] run playsound block.portal.travel block @a[distance=..32] ~ ~ ~ 1 0.8 0.5
execute if entity @p[tag=goldark.paths.werewoof, distance=..8] run particle totem_of_undying ~ ~1 ~ 1.0 1.0 1.0 1.0 20

# Cure target
execute as @p[tag=goldark.paths.werewoof, distance=..8] at @s run function goldark:tools/lycanthropy/cure_self


# Break pillars
fill ~2 ~ ~2 ~2 ~3 ~2 air destroy
fill ~2 ~ ~-2 ~2 ~3 ~-2 air destroy
fill ~-2 ~ ~2 ~-2 ~3 ~2 air destroy
fill ~-2 ~ ~-2 ~-2 ~3 ~-2 air destroy

# Convert Soul-block below
setblock ~ ~-1 ~ sand


# Explode focus point
summon tnt ~ ~ ~

# Call upon lightning again
summon lightning_bolt ~ ~-1 ~


# Remove self
kill @s[type=#goldark:technical]