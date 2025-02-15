## * Creates a throwable Pig, because why not.
## * 
## * Last modified: January 30th, 2025 (AydenTFoxx)


# Create Pig
summon pig ~ ~ ~ { \
        CustomName: '{ "text": "Tactical Pig" }', \
        DeathLootTable: "", \
        Tags: [ goldark.pig_spell.explosive ], \
	active_effects: [ { id: "slow_falling", duration: -1, show_particles: false } ] \
}

# Ride Snowball
ride @n[type=pig, tag=goldark.pig_spell.explosive, distance=..1] mount @n[type=snowball, distance=..2]


# Play audio feedback
playsound entity.pig.ambient player @s

# Reset trigger
scoreboard players reset @s goldark.used_item.snowball
