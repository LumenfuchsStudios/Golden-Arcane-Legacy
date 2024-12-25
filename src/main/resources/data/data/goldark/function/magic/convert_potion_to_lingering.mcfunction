## * Converts vanilla and custom potions to Splash variants... for a price, of course.
## * 
## * Last modified: December 21st, 2024 (AydenTFoxx)


# Remove trigger
advancement revoke @s only goldark:internal/craft_lingering_potion


# Demand blood
execute unless entity @s[level=1..] run damage @s 3 magic

# Demand experience points
execute if entity @s[level=1..] run xp add @s -5 points


# Display audiovisual feedback
playsound block.brewing_stand.brew player @a[distance=..12] ~ ~ ~ 0.8 0.8

execute if entity @s[level=1..] run particle happy_villager ~ ~1 ~ 0.2 0.3 0.2 1.0 12
execute unless entity @s[level=1..] run particle smoke ~ ~1 ~ 0.2 0.3 0.2 0.05 12
