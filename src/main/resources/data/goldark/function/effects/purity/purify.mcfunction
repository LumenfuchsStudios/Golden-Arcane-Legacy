## * "Purifies" the user, removing any Arcane Paths and effects active.
## * 
## * Last modified: December 24th, 2024 (AydenTFoxx)


# Apply Holy Numbness
scoreboard players set @s goldark.effect_timer.holy_numbness 1111

# If the target had an Arcane Path, it is removed
execute if entity @s[tag=goldark.paths.werewoof] run function goldark:tools/lycanthropy/cure
execute if entity @s[tag=goldark.paths.vempyre] run function goldark:tools/vampirism/cure


# Revoke Holy Sickness
scoreboard players set @s goldark.effect_timer.holy_sickness 0

# Grant Purity
function goldark:effects/purity/give