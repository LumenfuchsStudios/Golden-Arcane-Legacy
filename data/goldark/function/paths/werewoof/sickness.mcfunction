## * Manages Werewooves' allergies to holy materials, with specific debuffs tied to them.
## * 
## * Last modified: December 1st, 2024 (AydenTFoxx)


## IRON -- HOLY SICKNESS

# Grant Holy Sickness
execute if items entity @s weapon.* #goldark:iron/any run tag @s add goldark.holy_sickness.active
execute if items entity @s weapon.* #goldark:iron/pure run tag @s add goldark.holy_sickness.pure
execute if items entity @s weapon.* #goldark:iron/other run tag @s add goldark.holy_sickness.based

# Increase Debuff Timer
execute if entity @s[tag=goldark.holy_sickness.pure] run scoreboard players add @s goldark.effect_timer.holy_sickness 2
execute if entity @s[tag=goldark.holy_sickness.based] run scoreboard players add @s goldark.effect_timer.holy_sickness 1

execute if items entity @s weapon.* #goldark:iron/heavy run scoreboard players add @s goldark.effect_timer.holy_sickness 3

# Revoke Holy Sickness
execute if entity @s[tag=goldark.holy_sickness.pure] unless items entity @s weapon.* #goldark:iron/pure run tag @s remove goldark.holy_sickness.pure
execute if entity @s[tag=goldark.holy_sickness.based] unless items entity @s weapon.* #goldark:iron/other run tag @s remove goldark.holy_sickness.based
execute if entity @s[tag=goldark.holy_sickness.active] unless items entity @s weapon.* #goldark:iron/any run tag @s remove goldark.holy_sickness.active