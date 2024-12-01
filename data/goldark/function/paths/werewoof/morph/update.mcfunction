## * Runs the Wolf morph's behavior from transformed Werewooves.
## * The Wolf is hostile to all but bosses and other Woofs. It *can* be moved, but good luck there.
## * 
## * Last modified: November 30th, 2024 (AydenTFoxx)


## BEHAVIOR

# Aggro on nearby mobs
execute if entity @n[type=!#goldark:magic_immune, type=!#goldark:player_allies, tag=!goldark.paths.werewoof, tag=!goldark.path_transformed, distance=..8] \
        as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1] \
        run data modify entity @s[nbt={ AngerTime: 0 }] AngryAt set from entity @n[type=!#goldark:magic_immune, type=!#goldark:player_allies, tag=!goldark.paths.werewoof, tag=!goldark.path_transformed] UUID
    
execute if entity @n[type=!#goldark:magic_immune, type=!#goldark:player_allies, tag=!goldark.paths.werewoof, tag=!goldark.path_transformed, distance=..8] \
        as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1] \
        run data modify entity @s[nbt={ AngerTime: 0 }] AngerTime set value 200


# Deal melee damage (Wolf is too unreliable in combat on its own)
execute as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1] \
        as @e[type=!#goldark:magic_immune, type=!#goldark:player_allies, tag=!goldark.paths.werewoof, tag=!goldark.path_transformed, distance=..1] \
        run damage @s 4 mob_attack by @n[type=wolf, tag=goldark.dummy_morph.werewoof]


# Move & turn (kinda)
execute if entity @s[predicate=goldark:player_input/forward] as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1] at @s if block ^ ^ ^1 #air run tp @s ^ ^ ^1 facing ^ ^ ^8
execute if entity @s[predicate=goldark:player_input/left] as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1] at @s facing entity @n[type=player, tag=goldark.path.werewoof, distance=..1] eyes run tp @s ~ ~ ~ facing ^2 ^ ^4
execute if entity @s[predicate=goldark:player_input/right] as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1] at @s facing entity @n[type=player, tag=goldark.path.werewoof, distance=..1] eyes run tp @s ~ ~ ~ facing ^-2 ^ ^4

# Jump
execute if entity @s[predicate=goldark:player_input/jump] as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1] at @s[nbt={ OnGround: 1b }] run data modify entity @s Motion[1] set value 0.5


# Revert transformation
execute if entity @s[predicate=goldark:player_input/sneak] run tag @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..3] add goldark.temp.dummy_morph_remove
execute if entity @s[predicate=goldark:player_input/sneak] run data merge entity @n[type=wolf, tag=goldark.temp.dummy_morph_remove, distance=..3] { Silent: 1b, Health: 0, DeathTime: 20s }


## ON END

# Return to hooman form
execute unless entity @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..2] run function goldark:paths/werewoof/morph/revert