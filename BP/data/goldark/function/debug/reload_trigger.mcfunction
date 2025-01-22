## * Reloads the datapack. For use when Allow Cheats isn't enabled in a world.
## * 
## * Last modified: December 27th, 2024 (AydenTFoxx)


# Reset and re-enable trigger
scoreboard players reset @s goldark.reload
scoreboard players enable @s goldark.reload

# Display text feedback
tellraw @a [{ "text": "[", "color": "aqua" }, { "text": "Golden Arcane", "color": "yellow" }, { "text": "]", "color": "aqua" }, { "text": " Reloading!", "color": "white" } ]

# Reload datapack/s
schedule function goldark:debug/reload 20t