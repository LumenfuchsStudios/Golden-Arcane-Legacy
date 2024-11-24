## # AydenTFoxx @ September 25th, 2024

# * Lightning Bolt -- Conjures an electric discharge from above at the caster's facing direction.
# * When casted as a non-Player, it instead is summoned at the caster's position.

# * While sneaking, the AoE where lightning is cast is increased;
# * This can only be triggered by the player themselves.

# ? Magic Type: CHARM [1 tick | 8 Will]
# ? Path: Any (Bonus: Light-oriented)

# ? Run by: Player [Charm]


recipe take @s goldark:spells/charms/lightning_bolt/trigger


execute unless entity @s[tag=goldark.paths.light_type] unless score @s goldark.will_self matches 8.. run return run function goldark:spells/base/fail { fail_type: "will", spell_path: "charms/lightning_bolt" }

execute if entity @s[tag=goldark.paths.light_type] unless score @s goldark.will_self matches 4.. run return run function goldark:spells/base/fail { fail_type: "will", spell_path: "charms/lightning_bolt" }


execute if predicate goldark:is_sneaking positioned ^ ^ ^8 positioned over world_surface run summon lightning_bolt
execute if predicate goldark:is_sneaking positioned ^2 ^ ^8 positioned over world_surface run summon lightning_bolt
execute if predicate goldark:is_sneaking positioned ^-2 ^ ^8 positioned over world_surface run summon lightning_bolt

execute if predicate goldark:is_sneaking positioned ^ ^ ^12 positioned over world_surface run summon lightning_bolt
execute if predicate goldark:is_sneaking positioned ^3 ^ ^12 positioned over world_surface run summon lightning_bolt
execute if predicate goldark:is_sneaking positioned ^6 ^ ^12 positioned over world_surface run summon lightning_bolt
execute if predicate goldark:is_sneaking positioned ^-3 ^ ^12 positioned over world_surface run summon lightning_bolt
execute if predicate goldark:is_sneaking positioned ^-6 ^ ^12 positioned over world_surface run summon lightning_bolt

execute if entity @s[type=player] positioned ^ ^ ^5 positioned over world_surface run summon lightning_bolt

execute unless entity @s[type=player] positioned over world_surface run summon lightning_bolt