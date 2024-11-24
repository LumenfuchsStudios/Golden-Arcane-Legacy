## # AydenTFoxx @ September 10th - 25th, 2024

# * Weather: Rain -- Causes rain to fall unto the world for a while.

# ? Run by: Marker [tag: goldark.run_spell.weather.rain, score: { goldark.ability_timer: 0 }]


particle entity_effect{ color: [ .1, .2, .6, 1.0 ] } ~ ~ ~ 0.1 0.1 0.1 0.05 20 force

playsound block.water.ambient player @a[distance=..16] ~ ~ ~


weather rain 24000