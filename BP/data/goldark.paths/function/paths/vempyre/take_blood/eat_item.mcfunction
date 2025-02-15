## * Consumes life essence from consumed meaty (or bloody) items.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark.paths:paths/vempyre/take_blood/eat_item

# Ignore if player has the Purity effect
execute if entity @s[tag=goldark.effects.purity] run return fail


# Add score to player
scoreboard players add @s goldark.ability_clock 2

# Add extra score if item was Beetroot-related
scoreboard players add @s[advancements={ goldark.paths:paths/vempyre/take_blood/eat_beetroot=true }] goldark.ability_clock 2
advancement revoke @s[advancements={ goldark.paths:paths/vempyre/take_blood/eat_beetroot=true }] only goldark.paths:paths/vempyre/take_blood/eat_beetroot

# Add extra score if item was a Blood Vial
scoreboard players add @s[advancements={ goldark.paths:paths/vempyre/take_blood/drink_blood_vial=true }] goldark.ability_clock 8
advancement revoke @s[advancements={ goldark.paths:paths/vempyre/take_blood/drink_blood_vial=true }] only goldark.paths:paths/vempyre/take_blood/drink_blood_vial

# Add even more score if item was a strong Blood Vial
scoreboard players add @s[advancements={ goldark.paths:paths/vempyre/take_blood/drink_blood_vial_strong=true }] goldark.ability_clock 16
advancement revoke @s[advancements={ goldark.paths:paths/vempyre/take_blood/drink_blood_vial_strong=true }] only goldark.paths:paths/vempyre/take_blood/drink_blood_vial_strong


# Display audiovisual feedback
particle dust_color_transition{ from_color: 5374723, to_color: 2031873, scale: 0.7 } ~ ~1 ~ 0.2 0.4 0.2 1.0 10 force
playsound entity.generic.eat player @s ~ ~ ~ 0.6 0.5

# Display blood meter
function goldark.paths:paths/vempyre/display_blood