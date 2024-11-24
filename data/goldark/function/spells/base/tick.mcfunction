## # AydenTFoxx @ September 18th, 2024

# * Spell Tick -- Basic Tick function for running behavior of spells before their actual effect.

# ? Requires Args: spell_path
# ? Run by: Marker [tag: goldark.run_spell.{spell_id}]


scoreboard players remove @s goldark.ability_timer 1

$execute if score @s goldark.ability_timer matches 0 run function goldark:spells/$(spell_path)/end

kill @s[scores={ goldark.ability_timer=..0 }]