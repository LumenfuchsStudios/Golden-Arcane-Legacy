## * Transforms a Werewoof player into a Wolf form.
## * The player is invulnerable for as long as the Wolf remains alive.
## * 
## * Last modified: December 4th, 2024 (AydenTFoxx)


# Enable Spectator Mode (or "Spectator" for non-Players)
execute if entity @s[type=player] run function goldark:tools/set_gamemode { gamemode: spectator }

execute if entity @s[type=!player] run effect give @s invisibility infinite 0 true
execute if entity @s[type=!player] run data merge entity @s { Invulnerable: 1b, Silent: 1b, NoAI: 1b }
execute if entity @s[type=!player] run team join GoldArk_Morph @s


# Summon Wolf morph
summon wolf ~ ~ ~ { \
    Age: 99999, AngerTime: 100, PersistenceRequired: 1b, Tags: [ "goldark.dummy_morph.werewoof", "goldark.paths.werewoof", "goldark.path_transformed" ], \
    active_effects: [ { id: regeneration, amplifier: 1, duration: -1, show_particles: false }, { id: resistance, amplifier: 1, duration: -1, show_particles: false } ], \
    attributes: [ {id: "armor", base: 8.0f}, {id: "armor_toughness", base: 2.0f}, {id: "attack_damage", base: 8.0f}, {id: "attack_knockback", base: 1.0f}, {id: "knockback_resistance", base: 0.5f}, {id: "max_health", base: 20.0f}, {id: "movement_speed", base: 0.4f}, {id: "scale", base: 1.5f} ] }

# The Wolf inherits the user's health and active effects
data modify entity @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=0] Health set from entity @s[type=player] Health
data modify entity @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=0] active_effects append from entity @s active_effects


# Spectate Wolf (Player)
spectate @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=0] @s[type=player]

# Display audiovisual feedback
particle cloud ~ ~ ~ .2 .4 .2 0.1 30
playsound item.armor.equip_leather player @a[distance=..8] ~ ~ ~ 0.8 0.7


# Add tag
tag @s add goldark.path_transformed