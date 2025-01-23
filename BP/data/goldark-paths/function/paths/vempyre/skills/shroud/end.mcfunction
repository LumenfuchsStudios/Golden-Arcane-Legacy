## * Reveals the user and removes effects granted by the skill.
## * 
## * Last modified: December 22nd, 2024 (AydenTFoxx)


# Clear effects
effect clear @s slowness
effect clear @s resistance

effect clear @s invisibility
effect clear @s strength

# Reset attribute
attribute @s knockback_resistance modifier remove goldark:vempyre/shroud_knockback


# Display audiovisual feedback
playsound entity.ravager.death player @s ~ ~ ~ 0.8 0.5

particle smoke ~ ~1 ~ .2 .5 .2 0.1 30 force
particle gust ~ ~1 ~ .0 .0 .0 1.0 1

# Reduce cooldown (if ended early)
scoreboard players remove @s[advancements={ goldark-paths:paths/vempyre/shroud_attack=true }, scores={ goldark.ability_timer=120.. }] goldark.ability_timer 120


# Remove triggers
advancement revoke @s only goldark-paths:paths/vempyre/shroud_attack
advancement revoke @s only goldark-paths:paths/vempyre/shroud_hit

# Remove tag
tag @s remove goldark.vempyre.skill_shroud