## * Reloads the datapack. For use when Allow Cheats isn't enabled in a world.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Reset and re-enable trigger
scoreboard players reset @s goldark.reload
scoreboard players enable @s goldark.reload

# Display text feedback
tellraw @a [{ "text": "[" }, { "text": "Golden Arcane", "color": "yellow", "hoverEvent": { "action":  "show_text", "contents": ["", { "text": "The " }, { "text": "Mod", "strikethrough": true }, { "text": " Datapack of Golden Light." }] } }, { "text": "]" }, { "text": " Reloading!" } ]

# Reload datapack/s
schedule function goldark:debug/reload 20t