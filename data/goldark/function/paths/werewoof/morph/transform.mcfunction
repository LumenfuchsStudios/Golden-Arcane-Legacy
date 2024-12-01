## * Transforms a Werewoof player into a Wolf form.
## * The player is invulnerable for as long as the Wolf remains alive.
## * 
## * Last modified: November 30th, 2024 (AydenTFoxx)


# Enable Spectator Mode
gamemode spectator

# Summon transformed Wolf
summon wolf ~ ~ ~ { \
    Age: 99999, AngerTime: 200, Health:20.0f, PersistenceRequired: 1b, Tags: [ "goldark.dummy_morph.werewoof" ], \
    active_effects: [ { id: regeneration, amplifier: 1, duration: -1, show_particles: false }, { id: resistance, amplifier: 1, duration: -1, show_particles: false } ], \
    attributes: [ {id: "armor", base: 8.0f}, {id: "armor_toughness", base: 2.0f}, {id: "attack_damage", base: 8.0f}, {id: "attack_knockback", base: 1.0f}, {id: "knockback_resistance", base: 0.5f}, {id: "max_health", base: 20.0f}, {id: "movement_speed", base: 0.4f}, {id: "scale", base: 1.2f} ] }

# Mount Wolf morph (for visual effect)
ride @s mount @n[type=wolf, tag=goldark.dummy_morph.werewoof, distance=..1]

# Display audiovisual feedback
particle cloud ~ ~ ~ .2 .4 .2 0.1 30
playsound particle.soul_escape player @a[distance=..4] ~ ~ ~ 1 0.8

# Add tag
tag @s add goldark.path_transformed