## * Grants the caller a small amount of Holy Numbness when needed.
## * 
## * Last modified: December 25th, 2024 (AydenTFoxx)

# Happy Holidays! :D


# Ignore if player does not have Holy Sickness or is under the Purity effect
execute unless score @s goldark.effect_timer.holy_sickness matches 1.. \
        if entity @s[tag=goldark.effects.purity] run return fail

# Ignore if player already has a stronger Holy Protection
execute if score @s goldark.effect_timer.holy_numbness matches 20.. run return fail


# Grant effect
scoreboard players set @s goldark.effect_timer.holy_numbness 20