## * Resets the user's custom effects upon consuming a Milk Bucket.
## * 
## * Last modified: December 24th, 2024 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark:internal/use_item/milk_bucket


# Deny Holy Sickness
execute if score @s goldark.effect_timer.holy_sickness matches 1.. run function goldark:effects/holy_sickness/overlay

# Revoke Holy Numbness
execute if score @s goldark.effect_timer.holy_numbness matches 1.. run scoreboard players reset @s goldark.effect_timer.holy_numbness