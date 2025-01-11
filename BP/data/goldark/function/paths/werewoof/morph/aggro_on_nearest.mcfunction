## * Sets the Wolf morph's AngryAt value to the nearest target-able mob.
## * Wolf will still aggro upon being attacked by hostile mobs, however.
## * 
## * Last modified: January 2nd, 2025 (AydenTFoxx)


# Ignore while on cooldown
execute if score @s goldark.ability_timer matches 1.. run return fail


# Set aggro
data modify entity @s[nbt={ AngerTime: 0 }] AngryAt \
    set from entity @n[type=!#goldark:magic_immune, type=!#goldark:projectile, type=!#goldark:player_allies, tag=!goldark.paths.werewoof, tag=!goldark.path_transformed] UUID

data modify entity @s[nbt={ AngerTime: 0 }] AngerTime set value 200


# Trigger cooldown
execute if predicate goldark:misc/random_10 run scoreboard players add @s goldark.ability_timer 20