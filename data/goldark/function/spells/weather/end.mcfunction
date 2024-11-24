## # AydenTFoxx @ September 18th - 25th, 2024

# * Weather (END) - Alters the world's weather for a set amount of time.
# * Has three variants: Clear, Rain, and Thunderstorm

# ? Run by: Marker [tag: goldark.run_spell.weather..., scores={ goldark.ability_timer: 0 }]


execute if data entity @s data.goldark.weather.clear run return run function goldark:spells/weather/end/clear

execute if data entity @s data.goldark.weather.rain run return run function goldark:spells/weather/end/rain

execute if data entity @s data.goldark.weather.thunder run return run function goldark:spells/weather/end/thunder

kill @s