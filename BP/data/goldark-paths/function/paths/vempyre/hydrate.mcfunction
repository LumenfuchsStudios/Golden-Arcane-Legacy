## * Grants the player some few seconds of Holy Protection from consuming regular water.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark-paths:paths/vempyre/drink_water_trigger

# Ignore if player does not have Holy Sickness or is under the Purity effect
execute unless score @s goldark.effect_timer.holy_sickness matches 1.. \
        if entity @s[tag=goldark.effects.purity] run return fail

# Ignore if player already has Holy Protection
execute if score @s goldark.effect_timer.holy_numbness matches 1.. run return fail


# Grant effect
scoreboard players set @s goldark.effect_timer.holy_numbness 240

# Play audio feedback (Holy Sickness is already too heavy on visuals)
playsound entity.generic.extinguish_fire player @a[distance=..8] ~ ~ ~ 0.8