## # AydenTFoxx @ September 17th - 18th, 2024

# * Spell Failure -- Run by spells when one or more conditions are not met to its casting.

# ? Requires Arguments: fail_type, spell_path
# ? Run by: Player [on spell "init" Function]


$recipe take @s goldark:spells/$(spell_path)/trigger

$execute unless entity @s[gamemode=creative] run function goldark:spells/give/$(spell_path)


playsound block.soul_sand.break player @s ^ ^ ^ 0.8 0.5

particle smoke ~ ~ ~ 0.1 0.2 0.1 0.1 10 normal @s

$title @s actionbar { "translate": "goldark.spells.fail.$(fail_type)", "color": "red" }

return fail