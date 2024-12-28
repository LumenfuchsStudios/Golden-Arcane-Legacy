## * "Purifies" the user, removing any Arcane Paths and effects active.
## * 
## * Last modified: December 25th, 2024 (AydenTFoxx)

# Happy Holidays -w-


# Revoke trigger
advancement revoke @s only goldark:internal/use_item/potion/purity_strong


# Grant Purity
function goldark:effects/purity/give

# Revoke Holy Sickness
scoreboard players set @s goldark.effect_timer.holy_sickness 0


# Apply effects
effect give @s darkness 12 1 true
effect give @s nausea 12 1 true

# Apply Holy Numbness
scoreboard players set @s goldark.effect_timer.holy_numbness 1111


# Display audiovisual feedback
execute unless entity @s[tag=!goldark.paths.vempyre, tag=!goldark.paths.werewoof] run playsound entity.ghast.hurt player @s ~ ~ ~ 1 1.2
execute unless entity @s[tag=!goldark.paths.vempyre, tag=!goldark.paths.werewoof] run particle large_smoke ~ ~1 ~ .1 .2 .1 0.05 20 normal @s

# Remove Arcane Paths
execute if entity @s[tag=goldark.paths.werewoof] run function goldark:tools/lycanthropy/cure
execute if entity @s[tag=goldark.paths.vempyre] run function goldark:tools/vampirism/cure