## * Runs the Bat morph's behavior from transformed Vempyres.
## * The Bat is as unpredictable as one'd expect...
## * 
## * Last modified: January 25th, 2025 (AydenTFoxx)


## # BEHAVIOR

## Bat

# Deal contact damage
execute as @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=..4] at @s \
        run damage @n[type=!#goldark:magic_immune, type=!bat, tag=!goldark.paths.vempyre, tag=!goldark.path_transformed, distance=..1] 2 mob_attack by @s


## Input (Player)

# Move forward
execute if entity @s[predicate=goldark:player_input/forward] as @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=..4] at @s if block ^ ^ ^1 #goldark:breathable run tp @s ^ ^ ^1

# Rotate Bat
execute if entity @s[predicate=goldark:player_input/left, predicate=!goldark:player_input/right] as @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=..4] at @s run rotate @s facing ^2 ^ ^2
execute if entity @s[predicate=goldark:player_input/right, predicate=!goldark:player_input/left] as @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=..4] at @s run rotate @s facing ^-2 ^ ^2
execute if entity @s[predicate=goldark:player_input/backward] as @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=..4] at @s run rotate @s facing ^ ^-1 ^4

# Go up and down
execute if entity @s[predicate=goldark:player_input/jump] as @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=..4] at @s if block ~ ~1 ~ #goldark:breathable run tp @s ~ ~0.5 ~
execute unless entity @s[predicate=goldark:player_input/jump] as @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=..4] at @s if block ~ ~-1 ~ #goldark:breathable run tp @s ~ ~-0.1 ~

# Revert transformation
execute if entity @s[predicate=goldark:player_input/sneak] run function goldark.paths:paths/vempyre/morph/revert


## Other

# Display Bat's health
execute if entity @s[type=player] as @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=..4] store result score @s goldark.used_item.egg run data get entity @s Health

title @s[type=player] actionbar [{ "text": "Bat's health: ", "color": "gray" }, { "score": { "name": "@n[type=bat, tag=goldark.dummy_morph.vempyre, distance=..2]", "objective": "goldark.used_item.egg" }, "color": "red" }]


## # ON END

# Return to hooman form
execute unless entity @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=..4] run function goldark.paths:paths/vempyre/morph/revert