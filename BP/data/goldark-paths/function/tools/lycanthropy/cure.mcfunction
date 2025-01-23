## * Cures Lycanthropy from the calling entity.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# You be no Woof, exit.
execute unless entity @s[tag=goldark.paths.werewoof] run return run tellraw @s { "text": "You are not a Werewoof.", "color": "red" }


# Revert from potential transformation
execute if entity @s[tag=goldark.path_transformed] run function goldark-paths:paths/werewoof/morph/revert

# Display audiovisual feedback
particle end_rod ~ ~0.5 ~ .1 .2 .1 0.1 24
playsound entity.zombie_villager.converted neutral @a[distance=..16] ~ ~ ~ 1 0.8

# Apply effects
effect give @s weakness 12 0 false
effect give @s glowing 7 0 false


# Revoke Werewoof advancements
advancement revoke @s[type=player] from goldark-paths:paths/werewoof/root

# Remove Werewoof perk
execute if entity @s[tag=goldark.perks.werewoof] run function goldark-paths:perks/werewoof


# Remove tag, no longer a woof
tag @s remove goldark.paths.werewoof