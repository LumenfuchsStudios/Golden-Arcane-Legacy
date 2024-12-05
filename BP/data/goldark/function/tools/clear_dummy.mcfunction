## * Removes all scores and deletes a dummy entity.
## * 
## * Last modified: November 30th, 2024 (AydenTFoxx)


execute if entity @s[type=player] run return run tellraw @s { "text": "This function is internal and should not be ran as a player.", "color": "red" }

scoreboard players reset @s goldark.ability_clock
scoreboard players reset @s goldark.ability_timer
scoreboard players reset @s goldark.ambient_clock
scoreboard players reset @s goldark.dummy

kill @s[type=#goldark:technical]