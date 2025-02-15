## * Grants the player some few seconds of Holy Protection from consuming regular water.
## * 
## * Last modified: January 26th, 2025 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark.paths:paths/vempyre/trigger/drank_water

# Ignore if player is under the Purity effect
execute if entity @s[tag=goldark.effects.purity] run return fail

# Ignore if player already has a longer Holy Protection
execute if score @s goldark.effect_timer.holy_numbness matches 240.. run return fail


# Grant effect
scoreboard players add @s goldark.effect_timer.holy_numbness 240

# Play audio feedback (if Holy Sickness was active)
execute if score @s goldark.effect_timer.holy_sickness matches 1.. \
        run playsound entity.generic.extinguish_fire player @a[distance=..8] ~ ~ ~ 0.8