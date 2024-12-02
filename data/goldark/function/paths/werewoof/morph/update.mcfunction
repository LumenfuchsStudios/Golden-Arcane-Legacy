## * Runs the Wolf morph's behavior from transformed Werewooves.
## * The Wolf is hostile to all but bosses and other Woofs. It *can* be moved, but good luck there.
## * 
## * Last modified: December 1st, 2024 (AydenTFoxx)


## # BEHAVIOR

## Wolf

# Aggro on nearby mobs (with a cooldown)
execute if entity @n[type=!#goldark:magic_immune, type=!#goldark:player_allies, tag=!goldark.paths.werewoof, tag=!goldark.path_transformed, distance=..12] \
        as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1] \
        run function goldark:paths/werewoof/morph/aggro_on_nearest

# Reduce cooldown when not attacking
execute as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1] unless data entity @s AngryAt \
        run scoreboard players remove @s[scores={ goldark.ability_timer=1.. }] goldark.ability_timer 1


# Deal melee damage (Wolf is too unreliable in combat on its own)
execute as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1] \
        as @e[type=!#goldark:magic_immune, type=!#goldark:player_allies, tag=!goldark.paths.werewoof, tag=!goldark.path_transformed, distance=..1] \
        run damage @s 4 mob_attack by @n[type=wolf, tag=goldark.dummy_morph.werewoof]

# Raise from ground
execute as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1] at @s unless block ~ ~0.1 ~ #goldark:breathable run tp @s ~ ~1 ~


## Input (Player)

# Move & turn (kinda)
execute if entity @s[predicate=goldark:player_input/forward] as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1] at @s if block ^ ^ ^1 #goldark:walkable run tp @s ^ ^ ^1 facing ^ ^ ^8

execute if entity @s[predicate=goldark:player_input/left] as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1] at @s run tp @s ~ ~ ~ facing ^4 ^ ^4
execute if entity @s[predicate=goldark:player_input/right] as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1] at @s run tp @s ~ ~ ~ facing ^-4 ^ ^4

# Jump
execute if entity @s[predicate=goldark:player_input/jump] as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1] at @s[nbt={ OnGround: 1b }] if block ~ ~1 ~ #goldark:breathable run tp @s ~ ~1 ~

# Revert transformation
execute if entity @s[predicate=goldark:player_input/sneak] run tag @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..3] add goldark.temp.dummy_morph_remove
execute if entity @s[predicate=goldark:player_input/sneak] run data merge entity @n[type=wolf, tag=goldark.temp.dummy_morph_remove, distance=..3] { Silent: 1b, Health: 0, DeathTime: 20s }
execute if entity @s[predicate=goldark:player_input/sneak] run tp @s ~ ~0.5 ~


## Other (Mob)

# Teleport to Wolf
execute if entity @s[type=!player] run tp @s @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..2]


## # ON END

# Return to hooman form
execute unless entity @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..2] run function goldark:paths/werewoof/morph/revert