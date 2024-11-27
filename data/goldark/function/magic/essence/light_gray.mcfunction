## * Creates a protective AoE which repels undead creatures, wards off debuffs, and stimulates growth around itself.
## * 
## * Last modified: November 26th, 2024 (AydenTFoxx)

## ? Azure Bluet, Oxeye Daisy, White Tulip
#? - Protection, Purity (Daisy), Growth (Bluet)
#? - AoE Modifier


## # SCORE TIMER

# Tick Clock
scoreboard players add @s goldark.ability_clock 1

# Reset Clock, increment Timer
scoreboard players add @s[scores={ goldark.ability_clock=100.. }] goldark.ability_timer 1
scoreboard players set @s[scores={ goldark.ability_clock=100.. }] goldark.ability_clock 1

# Remove Self (Tulips double spell duration)
execute unless block ~ ~ ~ white_tulip if score @s goldark.ability_timer matches 10.. run function goldark:magic/misc/delete_self
execute if block ~ ~ ~ white_tulip if score @s goldark.ability_timer matches 20.. run function goldark:magic/misc/delete_self


## # VISUALS

# Rotate Self
tp @s ~ ~ ~ ~10 ~

# Run Particles
scoreboard players add @s goldark.effect_clock 1
scoreboard players operation @s goldark.effect_clock += @s goldark.ability_timer
scoreboard players operation @s goldark.effect_clock %= @s goldark.ability_clock

execute if score @s goldark.effect_clock matches 0..2 run particle end_rod ~ ~ ~ .0 .0 .0 0.1 2

particle white_smoke ~ ~ ~ 2. 0. 2. 0.05 10

particle firework ^ ^0.5 ^4 .0 .0 .0 0 5
particle firework ^ ^0.5 ^-4 .0 .0 .0 0 5


## # EFFECTS

## Repel the Undead (Protection)
# Display visual feedback
execute as @e[predicate=goldark:entity/is_hostile, type=#undead, distance=..4] at @s run particle soul_fire_flame ~ ~ ~ .1 .1 .1 0.05 10
execute as @e[predicate=goldark:entity/is_hostile, type=!#undead, distance=..4] at @s run particle flame ~ ~ ~ .1 .1 .1 0.05 5

# Harm entities (WARNING: Has the potential to wrongly aggro on nearby auras!)
execute as @e[predicate=goldark:entity/is_hostile, distance=..4] run damage @s 2 magic by @n[type=marker, tag=goldark.dummy_magic.lgray]
execute as @e[type=#undead, distance=..4] run damage @s 4 on_fire by @n[type=marker, tag=goldark.dummy_magic.lgray]

# Reduce AoE's lifetime
execute at @e[predicate=goldark:entity/is_hostile, distance=..4] run scoreboard players add @s goldark.ability_clock 10

# Displace entities
execute as @e[predicate=goldark:entity/is_hostile, distance=..4] facing entity @n[type=marker, tag=goldark.dummy_magic.lgray, distance=..4] feet at @s run tp @s ^ ^0.5 ^-0.5


## Clear mild debuffs (Purity)
# Display visual feedback (magic available)
execute if block ~ ~ ~ oxeye_daisy run particle effect ~ ~ ~ .0 .0 .0 1 3

# Tag debuff'd entities
execute if block ~ ~ ~ oxeye_daisy run tag @e[type=!#undead, distance=..4, predicate=goldark:magic/purity_debuffs] add goldark.temp.clean_debuffs

# Clear debuffs
effect clear @e[tag=goldark.temp.clean_debuffs, distance=..4] infested
effect clear @e[tag=goldark.temp.clean_debuffs, distance=..4] slowness
effect clear @e[tag=goldark.temp.clean_debuffs, distance=..4] weakness
effect clear @e[tag=goldark.temp.clean_debuffs, distance=..4] hunger
effect clear @e[tag=goldark.temp.clean_debuffs, distance=..4] unluck

# Display audiovisual feedback
execute at @e[tag=goldark.temp.clean_debuffs, distance=..4] run particle smoke ~ ~1 ~ .2 .4 .2 0.05 20
execute as @e[tag=goldark.temp.clean_debuffs, distance=..4] at @s run playsound block.fire.extinguish block @s ~ ~ ~ 1 0.8

# Reduce AoE's lifetime
execute at @e[tag=goldark.temp.clean_debuffs, distance=..4] run scoreboard players add @s goldark.ability_timer 1

# Remove Tag
execute if block ~ ~ ~ oxeye_daisy run tag @e[tag=goldark.temp.clean_debuffs, distance=..4] remove goldark.temp.clean_debuffs


## Grow nearby animals (Growth)
# Display feedback (magic available)
execute if block ~ ~ ~ azure_bluet run particle instant_effect ~ ~ ~ .0 .0 .0 0.5 3

# Age baby entities (not workin' w Villagers!)
execute if block ~ ~ ~ azure_bluet as @e[nbt={ InLove: 0 }, distance=..4] unless entity @s[nbt={ Age: 0 }] run data modify entity @s Age set value -1

# Display audiovisual feedback
execute if block ~ ~ ~ azure_bluet at @e[nbt={ InLove: 0, Age: -1 }, distance=..4] run particle end_rod ~ ~0.5 ~ .2 .2 .2 0.1 10
execute if block ~ ~ ~ azure_bluet at @e[nbt={ InLove: 0, Age: -1 }, distance=..4] run particle composter ~ ~0.5 ~ .5 .5 .5 0.2 20
execute if block ~ ~ ~ azure_bluet at @e[nbt={ InLove: 0, Age: -1 }, distance=..4] run playsound entity.player.levelup neutral @a[distance=..16] ~ ~ ~ 1 1.2

# Reduce AoE's lifetime
execute if block ~ ~ ~ azure_bluet at @e[nbt={ InLove: 0, Age: -1 }, distance=..4] run scoreboard players add @s goldark.ability_timer 2