## * Runs Werewoof-unique code & behaviors.
## * 
## * Last modified: January 26th, 2025 (AydenTFoxx)


## PERKS

# Werewoof
execute unless score @s goldark.effect_timer.holy_sickness matches 100.. \
        if entity @s[tag=!goldark.perks.werewoof, tag=!goldark.effects.purity, scores={ goldark.health_check=1.. }] run function goldark.paths:perks/werewoof

execute if score @s goldark.effect_timer.holy_sickness matches 100.. \
        if entity @s[tag=goldark.perks.werewoof, tag=!goldark.effects.purity, scores={ goldark.health_check=1.. }] run function goldark.paths:perks/werewoof


## BEHAVIOR

# Evaluate metal sickness
execute if entity @s[tag=!goldark.perks.holy_immune, tag=!goldark.save_gamemode.creative, tag=!goldark.save_gamemode.spectator] unless entity @s[gamemode=creative] \
        run function goldark.paths:paths/werewoof/sickness

# Revoke Holy Sickness (Creative)
tag @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.based, gamemode=creative] remove goldark.holy_sickness.based
tag @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.pure, gamemode=creative] remove goldark.holy_sickness.pure
tag @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.pure_block, gamemode=creative] remove goldark.holy_sickness.pure_block

tag @s[tag=goldark.holy_sickness.active, gamemode=creative] remove goldark.holy_sickness.active


# Transform into Wolf (Player)
execute if predicate goldark:player_input/sprint if predicate goldark:player_input/backward if predicate goldark:entity/is_on_ground \
        if entity @s[tag=!goldark.path_transformed] unless score @s goldark.health_check matches ..3 unless score @s goldark.path_level.vempyre matches 2.. \
        unless score @s goldark.effect_timer.holy_sickness matches 1.. unless score @s goldark.ability_timer matches 1.. \
        run function goldark.paths:paths/werewoof/morph/transform

# Transform into Wolf (Full Moon, non-player)
execute if entity @s[type=!player] if score #goldark_moon_phase goldark.dummy matches 0 if score #goldark_time_day goldark.dummy matches 13000..23000 \
        unless entity @s[tag=goldark.path_transformed] unless score @s goldark.health_check matches ..3 \
        unless score @s goldark.effect_timer.holy_sickness matches 1.. \
        run function goldark.paths:paths/werewoof/morph/transform

# De-transform from Wolf (Sunrise, non-player)
execute if score #goldark_time_day goldark.dummy matches 0 \
        if entity @s[type=!player, tag=goldark.path_transformed] \
        run function goldark.paths:paths/werewoof/morph/revert


# Reduce cooldown (Player)
scoreboard players remove @s[type=player, scores={ goldark.ability_timer=1.. }] goldark.ability_timer 1
scoreboard players reset @s[scores={ goldark.ability_timer=0 }] goldark.ability_timer

# Update Wolf form
execute if entity @s[tag=goldark.path_transformed, tag=!goldark.dummy_morph.werewoof] unless score @s goldark.path_level.vempyre matches 2.. \
        run function goldark.paths:paths/werewoof/morph/update