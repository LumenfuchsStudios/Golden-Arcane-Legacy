# You be no Woof, exit.
execute unless entity @s[tag=goldark.paths.werewoof] run return run tellraw @s { "text": "You are not a Werewoof.", "color": "red" }

# Ye be not transformed, exit.
execute unless entity @s[tag=goldark.path_transformed] run return run tellraw @s { "text": "You are not transformed.", "color": "red" }


# Display audiovisual feedback
particle smoke ~ ~0.5 ~ .1 .2 .1 0.1 30
playsound entity.wolf.whine neutral @a[distance=..16] ~ ~ ~ 0.8 0.8

# Revert from transformation
function goldark:paths/werewoof/morph/revert