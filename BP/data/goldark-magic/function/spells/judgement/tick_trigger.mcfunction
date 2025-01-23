## * Updates the trigger projectile for the Judgement AoE spell.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Display particle trail
particle end_rod ~ ~ ~ .05 .05 .05 0.05 3 force

# Create aura on impact
execute if block ^ ^ ^0.8 #goldark:breathable run tp @s ^ ^ ^0.8
execute unless block ^ ^ ^0.8 #goldark:breathable run function goldark-magic:spells/judgement/init_aura


# Remove projectile after a delay (lifetime)
scoreboard players operation @s goldark.ability_timer += #goldark_tick_rate goldark.dummy

kill @s[type=#goldark:technical, scores={ goldark.ability_timer=100.. }]