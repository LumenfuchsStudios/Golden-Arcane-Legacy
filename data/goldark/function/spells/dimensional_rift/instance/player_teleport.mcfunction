## # AydenTFoxx @ September 22nd - 24th, 2024

# * Teleports a player to the Rift's target location (Dimension + Position).
# * If the block above the target coordinates is non-Air, the teleport fails.

# ? Run by: Player [on Rift interaction]


$execute in $(target_dimension) unless block ~ ~1 ~ #air run return run function goldark:spells/dimensional_rift/instance/fail_player_teleport


playsound entity.player.teleport player @a[distance=..16] ~ ~ ~ 1 0.8

particle portal ~ ~ ~ 0.0 0.0 0.0 0.1 20 force


$execute in $(target_dimension) run teleport @s $(target_pos)


playsound entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 1 0.8

particle flash ~ ~ ~ 0 0 0 1 1 force

particle end_rod ~ ~ ~ 0.5 1 0.5 0.1 25 force