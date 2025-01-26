## * Cures Vampirism from the calling entity.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# You be no Pyre, exit.
execute unless entity @s[tag=goldark.paths.vempyre] run return run tellraw @s { "text": "You are not a Vempyre.", "color": "red" }


# Display audiovisual feedback
particle end_rod ~ ~0.5 ~ .1 .2 .1 0.1 24
playsound entity.zombie_villager.converted neutral @a[distance=..16] ~ ~ ~ 1 0.8

# Apply effects
effect give @s weakness 12 0 false
effect give @s glowing 7 0 false


# Revoke Vempyre advancements
advancement revoke @s[type=player] from goldark.paths:paths/vempyre/root

# Remove Vempyre perk
execute if entity @s[tag=goldark.perks.vempyre] run function goldark.paths:perks/vempyre


# Remove tag, no longer a pyre
tag @s remove goldark.paths.vempyre