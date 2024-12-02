# Return while on cooldown
execute if score @s goldark.ability_timer matches 1.. run return fail

# Set aggro
data modify entity @s[nbt={ AngerTime: 0 }] AngryAt \
    set from entity @n[type=!#goldark:magic_immune, type=!#goldark:player_allies, tag=!goldark.paths.werewoof, tag=!goldark.path_transformed] UUID

data modify entity @s[nbt={ AngerTime: 0 }] AngerTime set value 200

# Trigger cooldown if entity is player
execute as @n[type=!#goldark:magic_immune, type=!#goldark:player_allies, tag=!goldark.paths.werewoof, tag=!goldark.path_transformed] \
        if entity @s[type=player] run scoreboard players set @s goldark.ability_timer 100