## * Guarantees a user should receive a Thunderous Egg by collecting it near a chicken.
## * A remedy of sorts for Thunderous Eggs' rarity.
## * 
## * Last modified: December 27th, 2024 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark:internal/collect_egg_strong


# Add guarantee tag
tag @s add goldark.temp.guarantee_thunder_egg_strong

# Give egg
execute unless entity @s[advancements={ goldark:internal/collect_egg=true }] run function goldark:spells/thunder_egg/trade_egg