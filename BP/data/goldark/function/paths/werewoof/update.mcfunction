## * Runs Werewoof-unique code & behaviors.
## * 
## * Last modified: January 13th, 2024 (AydenTFoxx)


## PERKS

# Werewoof
execute unless score @s goldark.effect_timer.holy_sickness matches 100.. \
        if entity @s[tag=!goldark.perks.werewoof, tag=!goldark.effects.purity, scores={ goldark.health_check=1.. }] run function goldark:perks/werewoof

execute if score @s goldark.effect_timer.holy_sickness matches 100.. \
        if entity @s[tag=goldark.perks.werewoof, tag=!goldark.effects.purity, scores={ goldark.health_check=1.. }] run function goldark:perks/werewoof


## BEHAVIOR

# Evaluate metal sicknesses
execute unless entity @s[tag=goldark.perks.holy_immune] run function goldark:paths/werewoof/sickness

# Transform into Wolf
execute if predicate goldark:player_input/sprint if predicate goldark:player_input/backward if predicate goldark:entity/is_on_ground \
        unless entity @s[tag=goldark.path_transformed] unless score @s goldark.health_check matches ..3 \
        unless score @s goldark.effect_timer.holy_sickness matches 1.. unless score @s goldark.ability_timer matches 1.. \
        run function goldark:paths/werewoof/morph/transform

# Transform into Wolf (Full Moon, non-player)
execute if entity @s[type=!player] if score #goldark_moon_phase goldark.dummy matches 0 if score #goldark_time_day goldark.dummy matches 13000..23000 \
        unless entity @s[tag=goldark.path_transformed] unless score @s goldark.health_check matches ..3 \
        unless score @s goldark.effect_timer.holy_sickness matches 1.. \
        run function goldark:paths/werewoof/morph/transform

# De-transform from Wolf (Sunrise, non-player)
execute if score #goldark_time_day goldark.dummy matches 0 \
        if entity @s[type=!player, tag=goldark.path_transformed] \
        run function goldark:paths/werewoof/morph/revert

# Reduce cooldown (Player)
scoreboard players remove @s[type=player, scores={ goldark.ability_timer=1.. }] goldark.ability_timer 1
scoreboard players reset @s[scores={ goldark.ability_timer=0 }] goldark.ability_timer

# Update Wolf form
execute if entity @s[tag=goldark.path_transformed, tag=!goldark.dummy_morph.werewoof] run function goldark:paths/werewoof/morph/update