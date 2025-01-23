## * "Purifies" the user, removing any Arcane Paths and effects active.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark-paths:internal/use_item/potion/purity_strong


# Revoke Holy Sickness
scoreboard players set @s goldark.effect_timer.holy_sickness 0

# Remove all other effects
function goldark-paths:effects/consume_milk


# Apply effects
effect give @s darkness 12 1 true
effect give @s nausea 12 1 true


# Display audiovisual feedback
execute unless entity @s[tag=!goldark.paths.vempyre, tag=!goldark.paths.werewoof] run playsound block.portal.travel player @s ~ ~ ~ 1 1.33
execute unless entity @s[tag=!goldark.paths.vempyre, tag=!goldark.paths.werewoof] run particle large_smoke ~ ~1 ~ .1 .2 .1 0.05 20 normal @s

# Remove Arcane Paths
execute if entity @s[tag=goldark.paths.werewoof] run function goldark-paths:tools/lycanthropy/cure
execute if entity @s[tag=goldark.paths.vempyre] run function goldark-paths:tools/vempyrism/cure