## # AydenTFoxx @ September 23rd - 25th, 2024

# * Dimensional Rift (INIT) - Creates a rift in space-time to allow quick travel between dimensions.

# ? Run by: Player [Spell / Sacrifice with Rift Threader]


advancement revoke @s only goldark:internal/tools/rift_threader/sacrifice


execute positioned ^ ^ ^1 positioned over world_surface run function goldark:spells/base/start { spell_id: "dimensional_rift", spell_path: "dimensional_rift" }

scoreboard players add @n[type=marker, tag=goldark.run_spell.dimensional_rift] goldark.ability_timer 50


execute at @n[type=marker, tag=goldark.run_spell.dimensional_rift] run playsound block.portal.travel block @a[distance=..16] ~ ~ ~ 1 0.5

execute at @n[type=marker, tag=goldark.run_spell.dimensional_rift] run particle flash ~ ~ ~ 0.0 0.0 0.0 1 2 force