## * Moves the projectile around until either hitting a block or entity.
## * 
## * Last modified: January 25th, 2025 (AydenTFoxx)


# Display particle trail
particle end_rod ~ ~ ~ .05 .05 .05 0.01 2 force
particle reverse_portal ~ ~ ~ .01 .01 .01 .1 2


# Travel free blocks
execute if block ^ ^ ^1.5 #goldark:breathable unless entity @n[type=!#goldark:magic_immune, tag=!goldark.perks.holy_immune, distance=..2] run tp @s ^ ^ ^1.5

# Stick to non-immune mobs
execute at @n[type=!#goldark:magic_immune, tag=!goldark.perks.holy_immune, distance=..3] positioned ~ ~1 ~ facing entity @s eyes positioned as @s run tp @s ^ ^ ^-1


# Explode after delay
scoreboard players add @s goldark.ability_timer 1

execute if score @s goldark.ability_timer matches 40.. run function goldark.magic:spellcraft/essences/white/end