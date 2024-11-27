## * ... [Essence of Blood]
## * 
## * Last modified: November 26th, 2024 (AydenTFoxx)

##? Poppy, Rose Bush, Red Tulip
#? - Health, Might (Poppy), Love (Rose)
#? - Trigger Modifier


## # SCORE TIMER

# Tick Clock
execute if block ~ ~ ~ #goldark:red_tulip run scoreboard players add @s goldark.ability_timer 1

# Remove Self
execute if block ~ ~ ~ #goldark:red_tulip if score @s goldark.ability_timer matches 200 run function goldark:magic/misc/delete_self


## # VISUALS

# Rotate Self
tp @s ~ ~ ~ ~10 ~

# Run particles
particle spore_blossom_air ~ ~0.2 ~ .0 .0 .0 0 1


## # EFFECTS

## Grant positive effects (Health)
# Grant effects to non-Undead
effect give @n[type=!#undead, type=!#goldark:magic_immune, distance=..1] regeneration 20 0 true
effect give @n[type=!#undead, type=!#goldark:magic_immune, distance=..1] saturation 30 1 true
effect give @n[type=!#undead, type=!#goldark:magic_immune, distance=..1] health_boost 180 2 true

# Grant effects to Undead
effect give @n[type=#undead, distance=..1] absorption 90 1 true
effect give @n[type=#undead, distance=..1] instant_damage 1 1 false

# Display audiovisual feedback
execute if entity @e[type=!#goldark:magic_immune, distance=..1] run particle instant_effect ~ ~0.5 ~ .2 .4 .2 1 15
execute if entity @e[type=!#goldark:magic_immune, distance=..1] run playsound block.note_block.flute block @a[distance=..16] ~ ~ ~ 1 1.2


## Grant extra effects (Might)
# Display visual notice (magic available)
execute if block ~ ~ ~ #goldark:poppy run particle flame ^ ^0.2 ^0.4 .0 .0 .0 0.02 1

# Grant effects
execute if block ~ ~ ~ #goldark:poppy run effect give @n[type=!#goldark:magic_immune, distance=..1] strength 20 0 true
execute if block ~ ~ ~ #goldark:poppy run effect give @n[type=!#goldark:magic_immune, distance=..1] haste 20 0 true
execute if block ~ ~ ~ #goldark:poppy run effect give @n[type=!#goldark:magic_immune, distance=..1] jump_boost 20 0 true

# Display audiovisual feedback
execute if block ~ ~ ~ #goldark:poppy at @e[type=!#goldark:magic_immune, distance=..1] run particle enchant ~ ~ ~ .0 .0 .0 1 20
execute if block ~ ~ ~ #goldark:poppy at @e[type=!#goldark:magic_immune, distance=..1] run playsound block.trial_spawner.detect_player block @s ~ ~ ~ 1 1.2


## Breed nearby animals (Love)
# Rotate Self

# Display visual notice (magic available)
execute if block ~ ~ ~ rose_bush run particle heart ^ ^0.5 ^1 .0 .0 .0 0.02 1
execute if block ~ ~ ~ rose_bush run particle heart ^ ^0.5 ^-1 .0 .0 .0 0.02 1

# Make eligible adults nearby become f r e a k y
execute if block ~ ~ ~ rose_bush at @n[type=!#goldark:magic_immune, distance=..1] as @e[nbt={ InLove: 0, Age: 0 }, distance=..8] run data modify entity @s InLove set value 1000

# Display audiovisual feedback
execute if block ~ ~ ~ rose_bush at @n[type=!#goldark:magic_immune, distance=..1] as @e[nbt={ InLove: 0, Age: 0 }, distance=..8] at @s run particle heart ~ ~1.5 ~ .0 .0 .0 1 10
execute if block ~ ~ ~ rose_bush at @n[type=!#goldark:magic_immune, distance=..1] as @e[nbt={ InLove: 0, Age: 0 }, distance=..8] at @s run playsound entity.experience_orb.pickup neutral @a[distance=..16] ~ ~ ~ 1 1.2


## Remove Self when triggered
# Kill Dummy
execute if entity @n[type=!#goldark:magic_immune, distance=..1] run function goldark:magic/misc/delete_self