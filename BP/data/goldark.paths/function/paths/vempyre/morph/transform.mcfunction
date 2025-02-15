## * Transforms a Vempyre player into a Bat form.
## * The player is invulnerable for as long as the Bat remains alive.
## * 
## * Last modified: January 25th, 2025 (AydenTFoxx)


# Summon Bat morph
summon bat ~ ~ ~ { \
    NoAI: 1b, PersistenceRequired: 1b, Tags: [ "goldark.dummy_morph.vempyre", "goldark.paths.vempyre", "goldark.path_transformed" ], \
    active_effects: [ { id: resistance, amplifier: 2, duration: -1, show_particles: false }, { id: regeneration, duration: -1, show_particles: false } ], \
    attributes: [ {id: "minecraft:armor_toughness", base: 2.0d}, {id: "minecraft:max_health", base: 10.0d} ], \
    Health: 10.0f }


# Inherit user's health, rotation and active effects
execute store result entity @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=0] Health float 0.5 run data get entity @s Health

data modify entity @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=0] Rotation set from entity @s Rotation
data modify entity @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=0] active_effects set from entity @s active_effects

# Inherit Golden Arcane-specific effects
scoreboard players operation @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=0] goldark.effect_timer.holy_sickness = @s goldark.effect_timer.holy_sickness
scoreboard players operation @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=0] goldark.effect_timer.holy_numbness = @s goldark.effect_timer.holy_numbness

# Inherit immunity, if any
execute if entity @s[tag=goldark.perks.holy_immune] run tag @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=0] add goldark.perks.holy_immune
execute if entity @s[gamemode=creative] run tag @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=0] add goldark.perks.holy_immune


# Enable Spectator Mode
execute if entity @s[type=player] run function goldark:tools/set_gamemode { gamemode: spectator }

# Heal user if on low health
execute if score @s goldark.health_check matches ..5 run effect give @s instant_health 1 0


# Spectate Bat (Player)
spectate @n[type=bat, tag=goldark.dummy_morph.vempyre, distance=0] @s[type=player]

# Display audiovisual feedback
particle smoke ~ ~ ~ .1 .2 .1 0.01 32
playsound item.armor.equip_leather player @a[distance=..8] ~ ~ ~ 0.8 0.7


# Add tag
tag @s add goldark.path_transformed

# Add cooldown
scoreboard players add @s[type=player, tag=!goldark.save_gamemode.creative] goldark.ability_timer 250
scoreboard players add @s[type=player, tag=goldark.save_gamemode.creative] goldark.ability_timer 25


# Summon bats
function goldark.paths:paths/vempyre/decoy/summon_swarm