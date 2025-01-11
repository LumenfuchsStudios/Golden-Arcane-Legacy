## * Transforms a Werewoof player into a Wolf form.
## * The player is invulnerable for as long as the Wolf remains alive.
## * 
## * Last modified: December 18th, 2024 (AydenTFoxx)


# Summon Wolf morph
summon wolf ~ ~ ~ { \
    Age: 999999, AngerTime: 100, PersistenceRequired: 1b, Tags: [ "goldark.dummy_morph.werewoof", "goldark.paths.werewoof", "goldark.path_transformed" ], \
    active_effects: [ { id: regeneration, amplifier: 1, duration: -1, show_particles: false }, { id: resistance, amplifier: 2, duration: -1, show_particles: false } ], \
    attributes: [ { id: "minecraft:armor", base: 8.0d}, {id: "minecraft:armor_toughness", base: 4.0d}, {id: "minecraft:attack_damage", base: 8.0d}, {id: "minecraft:attack_knockback", base: 1.0d}, {id: "minecraft:knockback_resistance", base: 0.5d},  {id: "minecraft:max_health", base: 20.0d}, {id: "minecraft:movement_speed", base: 0.4d}, {id: "minecraft:scale", base: 1.5d} ], \
    Health: 20.0f }

# Inherit user's health, rotation and active effects
execute store result entity @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=0] Health float 1.0 run data get entity @s Health

data modify entity @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=0] Rotation set from entity @s Rotation
data modify entity @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=0] active_effects set from entity @s active_effects

# Inherit immunity, if any
execute if entity @s[tag=goldark.perks.holy_immune] run tag @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=0] add goldark.perks.holy_immune


# Enable Spectator Mode (or "Spectator" for non-Players)
execute if entity @s[type=player] run function goldark:tools/set_gamemode { gamemode: spectator }

execute if entity @s[type=!player] run effect give @s invisibility infinite 0 true
execute if entity @s[type=!player] run data merge entity @s { Invulnerable: 1b, Silent: 1b, NoAI: 1b }
execute if entity @s[type=!player] run team join goldark_morph @s

# Heal user if on low health
execute if score @s goldark.health_check matches ..4 run effect give @s regeneration 2 2


# Spectate Wolf (Player)
spectate @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=0] @s[type=player]

# Display audiovisual feedback
particle cloud ~ ~ ~ .2 .4 .2 0.1 30
playsound item.armor.equip_leather player @a[distance=..8] ~ ~ ~ 0.8 0.7

# Add tag
tag @s add goldark.path_transformed

# Add cooldown (Player)
scoreboard players add @s[type=player, tag=!goldark.save_gamemode.creative] goldark.ability_timer 250
scoreboard players add @s[type=player, tag=goldark.save_gamemode.creative] goldark.ability_timer 25