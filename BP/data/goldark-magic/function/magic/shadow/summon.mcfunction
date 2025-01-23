## * Summons a funky Zombie which disappears after some time passes.
## * There is a very blatant reference here and I'm both amazed and terrified by whomever notices it.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Hey.
summon zombie ~ ~ ~ { \
	CustomName: '{ "text": "TheEnsnare", "obfuscated": true, "color": "black" }', \
	CustomNameVisible: false, \
	active_effects: [ { id: "fire_resistance", amplifier: 0, duration: -1, show_icon: false, show_particles: false }, { id: "resistance", amplifier: 3, duration: -1, show_icon: false, show_particles: false } ], \
	IsBaby: false, \
	Silent: true, \
	attributes: [ { id: "armor_toughness", base: 8.0 }, { id: "burning_time", base: 8.0 }, { id: "knockback_resistance", base: 0.5 }, { id: "movement_speed", base: 0.25 }, { id: "water_movement_efficiency", base: 1.0 } ], \
	Tags: [ goldark.entity.shadow ] \
}


# Add score
scoreboard players add @n[type=zombie, tag=goldark.entity.shadow, distance=0] goldark.ability_timer 180

# Display audio feedback
playsound ambient.nether_wastes.mood hostile @a[distance=..32] ~ ~ ~ 1.0 0.2 0.15


# Spawn reinforcement
execute unless data storage goldark:settings { gamerules: { recursive_spawning: false } } \
		if predicate goldark:misc/random_10 run function goldark-magic:magic/shadow/summon