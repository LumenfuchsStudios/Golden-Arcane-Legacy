## * Increments a Vempyre's blood meter from drinking bottled blood.
## * Alternatively, bottled poison for non-Vempyres.
## * 
## * Last modified: December 24th, 2024 (AydenTFoxx)


# Revoke trigger
advancement revoke @s[tag=!goldark.paths.vempyre] only goldark:paths/vempyre/take_blood/drink_blood_vial_i
advancement revoke @s[tag=!goldark.paths.vempyre] only goldark:paths/vempyre/take_blood/drink_blood_vial_ii

# Apply usual debuffs if player is a Vempyre with the Purity effect
effect give @s[tag=goldark.paths.vempyre, tag=goldark.effects.purity] nausea 12 0
effect give @s[tag=goldark.paths.vempyre, tag=goldark.effects.purity] poison 8 0

# Ignore if player is not a Vempyre or has the Purity effect
execute unless entity @s[tag=goldark.paths.vempyre] \
        if entity @s[tag=goldark.effects.purity] run return fail


# Grant score
function goldark:paths/vempyre/take_blood/eat_item