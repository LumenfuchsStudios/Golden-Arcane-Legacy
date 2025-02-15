## * Ticks a quite volatile Pig's behavior.
## * 
## * Last modified: January 30th, 2025 (AydenTFoxx)


## AUDIO-VISUAL

# Rotate self
rotate @s ~12 ~

# Set falling speed
data modify entity @s Motion[1] set value -1.0d


# Display falling particles
particle flame ~ ~ ~ 0.1 0.1 0.1 0.05 4 force
particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.05 8 force

# Play burning audio
playsound entity.blaze.burn master @a[distance=..32] ~ ~ ~ 1 1.2 0.2


# Tick clock
scoreboard players add @s goldark.ambient_clock 1

# Play ticking audio
execute if score @s goldark.ambient_clock matches 10.. positioned over world_surface \
        run playsound block.note_block.bit master @a[distance=..32] ~ ~ ~ 2 0.5 0.2

# Reset clock
scoreboard players reset @s[scores={ goldark.ambient_clock=10.. }] goldark.ambient_clock


# Display target particles
execute positioned over world_surface run particle dust{ color: 14161173, scale: 1 } ~ ~0.5 ~ 0.4 0.1 0.4 1.0 3
execute positioned over world_surface run particle end_rod ~ ~0.5 ~ 0.0 0.0 0.0 0.0 1
execute positioned over world_surface run particle electric_spark ^ ^0.5 ^1 0.0 0.0 0.0 0.0 2 force
execute positioned over world_surface run particle electric_spark ^ ^0.5 ^-1 0.0 0.0 0.0 0.0 2 force


## IMPACT

# Play audio feedback
execute if predicate goldark:entity/is_on_ground run playsound entity.wither.death master @a[distance=..64] 3 1 0.5

# Invoke heaven's demise
execute if predicate goldark:entity/is_on_ground at @e[type=!#goldark:magic_immune, distance=..8] run summon lightning_bolt
execute if predicate goldark:entity/is_on_ground run summon creeper ~ ~ ~ { Fuse: 0, ExplosionRadius: 12, powered: true, CustomName: '{ "text": "Tactical Pig Strikeout" }', CustomNameVisible: false }

# Remove self
execute if predicate goldark:entity/is_on_ground run data merge entity @s { Health: 0.0f, DeathTime: 20s }