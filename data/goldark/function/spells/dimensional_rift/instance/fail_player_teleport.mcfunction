## # AydenTFoxx @ September 22nd, 2024

# * Fails a teleportation with a warning message to the player.

# ? Run by: Player [on Rift teleport fail]


playsound block.stone.hit block @s ~ ~ ~ 1 1.5

particle block{ block_state: barrier } ~ ~ ~ 0.0 0.0 0.0 0.1 5

title @s actionbar { "translate": "goldark.spells.dimensional_rift.fail.destination_blocked", "color": "red" }

return fail