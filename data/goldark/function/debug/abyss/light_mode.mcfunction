## # AydenTFoxx @ September 16th, 2024

# * Let There Be Light: (Also known as Light Mode (tm))
# * Removes the Darkness effect and grants immunity to it in the Abyss; Also grants Night Vision for better visibility.
# * (Note: "Immunity" simply means the Abyss will no longer inflict it; Other sources are unaffected)

# ? DEBUG Function: Not for regular gameplay; For use by developers to test the datapack in-game.


# REVOKE Light Mode (tm)
effect clear @s[tag=goldark.debug.no_abyss_darkness] night_vision

playsound entity.ghast.ambient player @s[tag=goldark.debug.no_abyss_darkness] ~ ~ ~ 0.8 0.3

particle large_smoke ~ ~0.5 ~ 0.1 0.1 0.1 0.1 10 normal @s[tag=goldark.debug.no_abyss_darkness]

execute if entity @s[tag=goldark.debug.no_abyss_darkness] run return run tag @s remove goldark.debug.no_abyss_darkness


# GRANT Light Mode (tm)
effect clear @s darkness

effect give @s night_vision infinite 0 true

playsound entity.player.levelup player @s ~ ~ ~ 0.8 1.5

particle end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0.1 10 normal @s

return run tag @s add goldark.debug.no_abyss_darkness