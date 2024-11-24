## # AydenTFoxx @ September 18th, 2024

# * Weather (INIT) - Alters the world's weather for a set amount of time.

# ? Run by: Marker [tag: goldark.run_spell.weather...]


particle crit ~ ~0.5 ~ 0.0 0.0 0.0 0.5 10

function goldark:spells/base/tick { spell_path: "weather" }