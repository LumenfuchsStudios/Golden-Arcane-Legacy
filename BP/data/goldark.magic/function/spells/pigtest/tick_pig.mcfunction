## * Ticks a mildly concerning Pig's behavior.
## * 
## * Last modified: February 15th, 2025 (AydenTFoxx)


# Conjure destruction on impact
execute if predicate goldark:entity/is_on_ground run summon lightning_bolt
execute if predicate goldark:entity/is_on_ground run summon creeper ~ ~ ~ { Fuse: 0, ExplosionRadius: 5, powered: true, CustomName: '{ "text": "Tactical Pig" }', CustomNameVisible: false }

# Remove self
execute if predicate goldark:entity/is_on_ground run data merge entity @s { Health: 0.0f, DeathTime: 20s }