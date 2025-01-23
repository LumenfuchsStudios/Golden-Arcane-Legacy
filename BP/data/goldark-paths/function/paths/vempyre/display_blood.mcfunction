## * Displays the user's current amount of Blood Points.
## * 
## * Last modified: December 14th, 2024 (AydenTFoxx)


# Display message
title @s actionbar ["", { "text": "<< ", "color": "dark_red" }, { "translate": "Blood Meter: %s", "color": "red", "with": [ { "score": { "name": "@s", "objective": "goldark.ability_clock" } } ] }, { "text": " >>", "color": "dark_red" }]