## * Increments a Vempyre's blood meter from drinking bottled blood.
## * Alternatively, bottled poison for non-Vempyres.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


## INIT

# Revoke trigger
advancement revoke @s[tag=!goldark.paths.vempyre] only goldark.paths:paths/vempyre/take_blood/drink_blood_vial
advancement revoke @s[tag=!goldark.paths.vempyre] only goldark.paths:paths/vempyre/take_blood/drink_blood_vial_strong


## FAIL

# Apply debuffs if player is not a Vempyre or has the Purity effect
execute unless entity @s[tag=goldark.paths.vempyre, tag=!goldark.effects.purity] \
        run effect give @s nausea 12 0

execute unless entity @s[tag=goldark.paths.vempyre, tag=!goldark.effects.purity] \
        run effect give @s poison 8 0

# Display audiovisual feedback
execute unless entity @s[tag=goldark.paths.vempyre, tag=!goldark.effects.purity] \
        run function goldark:tools/cave_noise

# Ignore if player is not a Vempyre or has the Purity effect
execute unless entity @s[tag=goldark.paths.vempyre, tag=!goldark.effects.purity] \
        run return fail


## SUCCEED

# Replace Darkness
effect clear @s darkness

# Give Saturation
effect give @s saturation 4 0 true

# Play audio feedback
playsound particle.soul_escape player @s ~ ~ ~ 0.8


# Grant blood
function goldark.paths:paths/vempyre/take_blood/eat_item