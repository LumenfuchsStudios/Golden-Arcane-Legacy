## # AydenTFoxx @ September 15th - 18th, 2024

# * Spell Initializer -- Runs common behavior to all spells upon initialization.

# ? Requires Args: spell_id, spell_path
# ? Run by: Player [Spell]


$recipe take @s goldark:spells/$(spell_path)/trigger

$execute align xyz run summon marker ~0.5 ~0.5 ~0.5 { Tags: [ goldark.run_spell.$(spell_id) ] }


$execute at @e[type=marker, tag=goldark.run_spell.$(spell_id), distance=..1, limit=1] run playsound block.amethyst_block.resonate player @s ^ ^ ^ 1.5 1.5

$execute at @e[type=marker, tag=goldark.run_spell.$(spell_id), distance=..1, limit=1] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.05 10

$execute at @e[type=marker, tag=goldark.run_spell.$(spell_id), distance=..1, limit=1] run title @a[distance=..16] actionbar { "translate": "goldark.spells.$(spell_id).on_use" }


$scoreboard players set @e[type=marker, tag=goldark.run_spell.$(spell_id), distance=..1, limit=1] goldark.ability_timer 50

scoreboard players set @s goldark.ability_timer 50