## # AydenTFoxx @ September 18th, 2024

# * Weather (INIT) - Alters the world's weather for a set amount of time.
# * Has three variants: Clear, Rain, and Thunderstorm

# ? Required Args: weather
# ? Run by: Player [Spell]


$execute if entity @s[scores={ goldark.ability_timer=1.. }] run \
    return run function goldark:spells/base/fail { fail_type: "concurrency", spell_path: "weather/$(weather)" }

$execute unless entity @s[nbt={ Dimension: "minecraft:overworld" }] unless entity @s[nbt={ Dimension: "goldark:heavens" }] run \
    return run function goldark:spells/base/fail { fail_type: "dimension", spell_path: "weather/$(weather)" }


$function goldark:spells/base/start { spell_id: "weather.$(weather)", spell_path: "weather/$(weather)" }

$data merge entity @n[type=marker, tag=goldark.run_spell.weather.$(weather), distance=..1] { data: { goldark: { weather: { $(weather): 1b } } } }