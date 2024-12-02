## ? MACRO Arguments:
#? gamemode: The gamemode to be toggled to.


## SET

# Save current gamemode
tag @s[gamemode=survival] add goldark.save_gamemode.survival
tag @s[gamemode=creative] add goldark.save_gamemode.creative
tag @s[gamemode=adventure] add goldark.save_gamemode.adventure
tag @s[gamemode=spectator] add goldark.save_gamemode.spectator

# Set gamemode
$gamemode $(gamemode)