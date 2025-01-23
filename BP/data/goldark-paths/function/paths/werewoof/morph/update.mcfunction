## * Runs the Wolf morph's behavior from transformed Werewooves.
## * The Wolf is hostile to all but bosses and other Woofs. It *can* be moved, but good luck there.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


## # BEHAVIOR

## Wolf

# Aggro on nearby mobs (with a cooldown)
execute as @n[type=!#goldark:magic_immune, type=!#goldark:projectile, type=!#goldark:player_allies, tag=!goldark.paths.werewoof, tag=!goldark.path_transformed, distance=..16] \
        unless entity @s[gamemode=!survival, gamemode=!adventure] \
        as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..4] at @s \
        run function goldark-paths:paths/werewoof/morph/aggro_on_nearest

# Reduce cooldown when not attacking
execute as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..4] unless data entity @s AngryAt \
        run scoreboard players remove @s[scores={ goldark.ability_timer=1.. }] goldark.ability_timer 1

# Deal melee damage (Wolf is too unreliable in combat on its own)
execute as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..4] at @s \
        run damage @n[type=!#goldark:magic_immune, type=!#goldark:player_allies, tag=!goldark.paths.werewoof, tag=!goldark.path_transformed, distance=..1] 4 mob_attack by @s

# Raise from ground
execute as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..4] at @s \
        unless block ~ ~0.5 ~ #goldark:breathable if block ~ ~1 ~ #goldark:breathable \
        run tp @s ~ ~1 ~

# Speed up towards foes
execute as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..4] at @s[predicate=!goldark:entity/is_on_ground] \
        if data entity @s AngryAt run effect give @s speed 1 1 true


## Input (Player)

# Move forward
execute if entity @s[predicate=goldark:player_input/forward] as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..4] at @s if predicate goldark:entity/is_on_ground if block ^ ^ ^1 #goldark:breathable run tp @s ^ ^ ^1 facing ^ ^ ^8

# Rotate Wolf
execute if entity @s[predicate=goldark:player_input/left, predicate=!goldark:player_input/right] as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..4] at @s run rotate @s facing ^4 ^ ^4
execute if entity @s[predicate=goldark:player_input/right, predicate=!goldark:player_input/left] as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..4] at @s run rotate @s facing ^-4 ^ ^4

# Jump
execute if entity @s[predicate=goldark:player_input/jump] as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..4] at @s if predicate goldark:entity/is_on_ground if block ~ ~1 ~ #goldark:breathable run data modify entity @s Motion[1] set value 0.4

# Revert transformation
execute if entity @s[predicate=goldark:player_input/sneak] run function goldark-paths:paths/werewoof/morph/revert


## Other

# Teleport to Wolf (Mob)
execute if entity @s[type=!player] run ride @s mount @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..4]

# Display Wolf's health (Player)
execute if entity @s[type=player] as @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..4] store result score @s goldark.used_item.egg run data get entity @s Health

title @s[type=player] actionbar [{ "text": "Wolf's health: ", "color": "gray" }, { "score": { "name": "@n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..2]", "objective": "goldark.used_item.egg" }, "color": "red" }]


## # ON END

# Return to hooman form
execute unless entity @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..4] run function goldark-paths:paths/werewoof/morph/revert