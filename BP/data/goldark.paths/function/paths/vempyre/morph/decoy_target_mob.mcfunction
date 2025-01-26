# Move to nearest mob
execute unless entity @n[type=bat, tag=goldark.vempyre.bat_decoy, distance=..0.5] \
        positioned ~ ~1 ~ facing entity @s eyes positioned as @s run tp @s ^ ^ ^-0.5

# Move to random mob
execute if entity @n[type=bat, tag=goldark.vempyre.bat_decoy, distance=..0.5] at @n[type=!#goldark:magic_immune, type=!bat, tag=!goldark.paths.vempyre, tag=!goldark.path_transformed, distance=..16, sort=random] \
        positioned ~ ~1 ~ facing entity @s eyes positioned as @s run tp @s ^ ^ ^-0.5