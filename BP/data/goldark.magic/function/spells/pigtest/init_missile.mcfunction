## * Creates an ICBP (Intercontinental-Ballistic-Pig) above the player.
## * 
## * Last modified: January 30th, 2025 (AydenTFoxx)


# Create Pig
summon pig ~ ~128 ~ { \
        CustomName: '{ "text": "Tactical Pig" }', \
        DeathLootTable: "", \
        Tags: [ goldark.pig_spell.satellite ], \
        Invulnerable: 1b, \
        Fire: 3600, \
        active_effects: [ { id: "slow_falling", duration: -1, show_particles: false } ] \
}

# Play audio feedback
playsound entity.pig.ambient player @s ~ ~ ~ 1 0.5


# Reset trigger
scoreboard players reset @s goldark.used_item.snowball

# Remove snowball
kill @n[type=snowball, distance=..4]