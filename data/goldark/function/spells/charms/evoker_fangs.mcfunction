## # AydenTFoxx @ September 25th, 2024

# * Evoker Fangs -- Summons deadly fangs in the caster's facing direction.
# * When casted as a non-Player, it instead is summoned at the caster's position.

# * When shifting, the fangs are summoned in a circle pattern instead.
# * This can only be done by the player themselves.

# ? Magic Type: CHARM [1 tick | 8 Will]
# ? Path: Any (Bonus: Dark-oriented)

# ? Run by: Player [Charm]


recipe take @s goldark:spells/charms/evoker_fangs/trigger


execute unless entity @s[tag=goldark.paths.dark_type] unless score @s goldark.will_self matches 8.. run return run function goldark:spells/base/fail { fail_type: "will", spell_path: "charms/evoker_fangs" }

execute if entity @s[tag=goldark.paths.dark_type] unless score @s goldark.will_self matches 4.. run return run function goldark:spells/base/fail { fail_type: "will", spell_path: "charms/evoker_fangs" }


execute if predicate goldark:is_sneaking positioned ~ ~ ~4 run summon evoker_fangs
execute if predicate goldark:is_sneaking positioned ~1 ~ ~4 run summon evoker_fangs
execute if predicate goldark:is_sneaking positioned ~2 ~ ~4 run summon evoker_fangs
execute if predicate goldark:is_sneaking positioned ~4 ~ ~ run summon evoker_fangs
execute if predicate goldark:is_sneaking positioned ~4 ~ ~1 run summon evoker_fangs
execute if predicate goldark:is_sneaking positioned ~4 ~ ~2 run summon evoker_fangs
execute if predicate goldark:is_sneaking positioned ~ ~ ~-4 run summon evoker_fangs
execute if predicate goldark:is_sneaking positioned ~1 ~ ~-4 run summon evoker_fangs
execute if predicate goldark:is_sneaking positioned ~2 ~ ~-4 run summon evoker_fangs
execute if predicate goldark:is_sneaking positioned ~-4 ~ ~ run summon evoker_fangs
execute if predicate goldark:is_sneaking positioned ~-4 ~ ~1 run summon evoker_fangs
execute if predicate goldark:is_sneaking positioned ~-4 ~ ~2 run summon evoker_fangs

execute if predicate goldark:is_sneaking run return 1


execute if entity @s[type=player] positioned ^ ^ ^4 run summon evoker_fangs

execute if entity @s[type=player] positioned ^ ^0.5 ^5 run summon evoker_fangs

execute if entity @s[type=player] positioned ^ ^0.5 ^6 run summon evoker_fangs

execute if entity @s[type=player] positioned ^ ^1 ^7 run summon evoker_fangs

execute if entity @s[type=player] positioned ^ ^1 ^8 run summon evoker_fangs

execute unless entity @s[type=player] run summon evoker_fangs