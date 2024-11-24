## # AydenTFoxx @ September 12th - 23rd, 2024

# * A collection of all Golden Arcane spells. When ran, it tests for any match for the player's cast spell.

# ? Run by: Player [scores: { goldark.use_spell: 1.. }]


execute if predicate goldark:spells/charms/abyss_warp run function goldark:spells/charms/abyss_warp
execute if predicate goldark:spells/charms/evoker_fangs run function goldark:spells/charms/evoker_fangs
execute if predicate goldark:spells/charms/lightning_bolt run function goldark:spells/charms/lightning_bolt
execute if predicate goldark:spells/charms/smelt run function goldark:spells/charms/smelt

execute if predicate goldark:spells/weather/clear run function goldark:spells/weather/init { weather: "clear" }
execute if predicate goldark:spells/weather/rain run function goldark:spells/weather/init { weather: "rain" }
execute if predicate goldark:spells/weather/thunder run function goldark:spells/weather/init { weather: "thunder" }

execute if predicate goldark:spells/dimensional_rift run function goldark:spells/base/start { spell_id: "dimensional_rift", spell_path: "dimensional_rift" }

scoreboard players reset @s[scores={ goldark.use_spell=1.. }] goldark.use_spell