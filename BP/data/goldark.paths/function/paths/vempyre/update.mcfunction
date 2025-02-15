## * Runs Vempyre-specific code and behaviors.
## * 
## * Last modified: February 15th, 2024 (AydenTFoxx)


## PERKS

# Vempyre
execute unless score @s goldark.effect_timer.holy_sickness matches 200.. \
        if entity @s[tag=!goldark.perks.vempyre, tag=!goldark.effects.purity, scores={ goldark.health_check=1.. }] run function goldark.paths:perks/vempyre

execute if score @s goldark.effect_timer.holy_sickness matches 200.. \
        if entity @s[tag=goldark.perks.vempyre, tag=!goldark.effects.purity, scores={ goldark.health_check=1.. }] run function goldark.paths:perks/vempyre


## BEHAVIOR

# Burn in sunlight
execute if predicate goldark:block/is_under_sunlight unless score #goldark_time_day goldark.dummy matches 12600..23500 \
        if entity @s[tag=!goldark.vempyre.skill_shroud, tag=!goldark.save_gamemode.creative, tag=!goldark.save_gamemode.spectator, tag=!goldark.perks.holy_immune] \
        unless score @s goldark.effect_timer.holy_numbness matches 1.. unless score @s goldark.path_level.vempyre matches 3.. unless entity @s[gamemode=creative] \
        run function goldark.paths:paths/vempyre/sunlight


# Skill: Heal
execute if predicate goldark:player_input/sprint if predicate goldark:player_input/sneak if predicate goldark:player_input/backward \
        unless score @s[gamemode=!creative, gamemode=!spectator] goldark.ability_clock matches ..19 unless score @s goldark.ability_timer matches 1.. \
        run function goldark.paths:paths/vempyre/skills/heal

# Skill: Lunge
execute if predicate goldark:player_input/sprint if predicate goldark:player_input/sneak if predicate goldark:player_input/forward \
        unless score @s[gamemode=!creative, gamemode=!spectator] goldark.ability_clock matches ..9 unless score @s goldark.ability_timer matches 1.. \
        run function goldark.paths:paths/vempyre/skills/lunge/init

# Skill: Shroud
execute if predicate goldark:player_input/sprint if predicate goldark:player_input/sneak if predicate goldark:player_input/left if predicate goldark:player_input/right \
        unless score @s[gamemode=!creative, gamemode=!spectator] goldark.ability_clock matches ..49 unless score @s goldark.ability_timer matches 1.. \
        run function goldark.paths:paths/vempyre/skills/shroud/init


# Tick skills
execute if entity @s[tag=goldark.vempyre.skill_lunge] run function goldark.paths:paths/vempyre/skills/lunge/tick
execute if entity @s[tag=goldark.vempyre.skill_shroud] run function goldark.paths:paths/vempyre/skills/shroud/tick

# Display blood meter (after Heal)
execute if entity @s[tag=goldark.temp.display_blood, scores={ goldark.ability_timer=20 }] run function goldark.paths:paths/vempyre/display_blood
execute if entity @s[tag=goldark.temp.display_blood, scores={ goldark.ability_timer=20 }] run tag @s remove goldark.temp.display_blood


# Reduce cooldown Timer
scoreboard players remove @s[scores={ goldark.ability_timer=1.. }] goldark.ability_timer 1
scoreboard players reset @s[scores={ goldark.ability_timer=0 }] goldark.ability_timer


## B A T

# Transform into Bat
execute if entity @s[scores={ goldark.path_level.vempyre=2.., goldark.health_check=1.. }, predicate=goldark:player_input/sprint, predicate=goldark:player_input/backward, tag=!goldark.path_transformed] \
        unless score @s goldark.effect_timer.holy_sickness matches 100.. unless score @s goldark.ability_timer matches 1.. \
        run function goldark.paths:paths/vempyre/morph/transform

# Update Bat form
execute if entity @s[tag=goldark.path_transformed, tag=!goldark.dummy_morph.vempyre, scores={ goldark.path_level.vempyre=2.. }] run function goldark.paths:paths/vempyre/morph/update