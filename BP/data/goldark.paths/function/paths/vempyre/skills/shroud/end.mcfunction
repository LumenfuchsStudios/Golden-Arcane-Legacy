## * Reveals the user and removes effects granted by the skill.
## * 
## * Last modified: January 26th, 2025 (AydenTFoxx)


# Clear effects
effect clear @s slowness
effect clear @s[scores={ goldark.path_level.vempyre=3.. }] speed

effect clear @s resistance

effect clear @s invisibility
effect clear @s strength

# Grant buffs on successful attack
effect give @s[advancements={ goldark.paths:paths/vempyre/trigger/shroud_attack=true }] strength 3 1
effect give @s[advancements={ goldark.paths:paths/vempyre/trigger/shroud_attack=true }] haste 3 1

# Reset attribute
attribute @s knockback_resistance modifier remove goldark:vempyre/shroud_knockback


# Display audiovisual feedback
execute if entity @s[advancements={ goldark.paths:paths/vempyre/trigger/shroud_attack=true }] run playsound block.enchantment_table.use player @a[distance=..16] ~ ~ ~ 0.8 0.5 0.1
execute if entity @s[advancements={ goldark.paths:paths/vempyre/trigger/shroud_hit=true }] run playsound entity.ghast.death player @a[distance=..16] ~ ~ ~ 0.8 0.7 0.1

particle smoke ~ ~1 ~ .2 .5 .2 0.1 30 force

execute if entity @s[advancements={ goldark.paths:paths/vempyre/trigger/shroud_attack=true }] \
        run particle gust ~ ~1 ~ .0 .0 .0 1.0 1

# Reduce cooldown
scoreboard players remove @s[advancements={ goldark.paths:paths/vempyre/trigger/shroud_hit=true }, scores={ goldark.ability_timer=600..720 }] goldark.ability_timer 400
scoreboard players remove @s[advancements={ goldark.paths:paths/vempyre/trigger/shroud_attack=true }, scores={ goldark.ability_timer=200.. }] goldark.ability_timer 200


# Remove triggers
advancement revoke @s only goldark.paths:paths/vempyre/trigger/shroud_attack
advancement revoke @s only goldark.paths:paths/vempyre/trigger/shroud_hit

# Remove tag
tag @s remove goldark.vempyre.skill_shroud