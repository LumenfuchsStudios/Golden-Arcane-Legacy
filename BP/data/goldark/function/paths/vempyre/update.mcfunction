## * Runs Vempyre-specific code and behaviors.
## * 
## * Last modified: December 17th, 2024 (AydenTFoxx)


## PERKS

# Vempyre
execute unless score @s goldark.effect_timer.holy_sickness matches 200.. \
        if entity @s[tag=!goldark.perks.vempyre] run function goldark:perks/vempyre

execute if score @s goldark.effect_timer.holy_sickness matches 200.. \
        if entity @s[tag=goldark.perks.vempyre] run function goldark:perks/vempyre


## BEHAVIOR

# Burn in sunlight
execute if predicate goldark:entity/can_see_sky unless score #goldark_time_day goldark.dummy matches 12600..23500 \
        unless score @s goldark.effect_timer.holy_numbness matches 1.. unless entity @s[tag=goldark.perks.holy_immune] \
        unless entity @s[tag=goldark.vempyre.skill_shroud] unless entity @s[gamemode=creative] \
        run function goldark:paths/vempyre/sunlight


# Skill: Heal
execute if predicate goldark:player_input/sprint if predicate goldark:player_input/sneak if predicate goldark:player_input/backward \
        if score @s goldark.ability_clock matches 20.. unless score @s goldark.ability_timer matches 1.. \
        run function goldark:paths/vempyre/skills/heal

# Skill: Lunge
execute if predicate goldark:player_input/sprint if predicate goldark:player_input/sneak if predicate goldark:player_input/forward \
        if score @s goldark.ability_clock matches 10.. unless score @s goldark.ability_timer matches 1.. \
        run function goldark:paths/vempyre/skills/lunge/init

# Skill: Shroud
execute if predicate goldark:player_input/sprint if predicate goldark:player_input/sneak if predicate goldark:player_input/left if predicate goldark:player_input/right \
        if score @s goldark.ability_clock matches 80.. unless score @s goldark.ability_timer matches 1.. \
        run function goldark:paths/vempyre/skills/shroud/init


# Tick skills
execute if entity @s[tag=goldark.vempyre.skill_lunge] run function goldark:paths/vempyre/skills/lunge/tick
execute if entity @s[tag=goldark.vempyre.skill_shroud] run function goldark:paths/vempyre/skills/shroud/tick

# Display blood meter (after Heal)
execute if entity @s[tag=goldark.temp.display_blood, scores={ goldark.ability_timer=20 }] run function goldark:paths/vempyre/display_blood
execute if entity @s[tag=goldark.temp.display_blood, scores={ goldark.ability_timer=20 }] run tag @s remove goldark.temp.display_blood


# Reduce cooldown Timer
scoreboard players remove @s[scores={ goldark.ability_timer=1.. }] goldark.ability_timer 1
scoreboard players reset @s[scores={ goldark.ability_timer=0 }] goldark.ability_timer