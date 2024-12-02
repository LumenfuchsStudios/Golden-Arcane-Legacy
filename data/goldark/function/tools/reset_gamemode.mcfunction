## RESET

# Restore gamemode
gamemode survival @s[tag=goldark.save_gamemode.survival]
gamemode creative @s[tag=goldark.save_gamemode.creative]
gamemode adventure @s[tag=goldark.save_gamemode.adventure]
gamemode spectator @s[tag=goldark.save_gamemode.spectator]

# Remove save tags
tag @s[tag=goldark.save_gamemode.survival] remove goldark.save_gamemode.survival
tag @s[tag=goldark.save_gamemode.creative] remove goldark.save_gamemode.creative
tag @s[tag=goldark.save_gamemode.adventure] remove goldark.save_gamemode.adventure
tag @s[tag=goldark.save_gamemode.spectator] remove goldark.save_gamemode.spectator