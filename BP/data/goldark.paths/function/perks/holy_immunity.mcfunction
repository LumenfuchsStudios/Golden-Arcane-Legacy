## * Grants the user the Holy Immunity perk, granting immunity to Holy-based damage.
## * 
## * Last modified: January 26th, 2025 (AydenTFoxx)


## Set Attribute
execute if entity @s[tag=!goldark.perks.holy_immune] \
        run return run tag @s[tag=!goldark.perks.holy_immune] add goldark.perks.holy_immune

## Reset Attribute
tag @s remove goldark.perks.holy_immune