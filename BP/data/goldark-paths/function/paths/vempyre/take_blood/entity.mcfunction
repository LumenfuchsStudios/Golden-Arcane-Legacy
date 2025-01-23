## * Consumes life essence from the nearest living creature to the player.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark-paths:paths/vempyre/take_blood/entity


# Ignore if player has the Purity effect
execute if entity @s[tag=goldark.effects.purity] run return fail

# Ignore if target is Undead or a Slime/Magma Cube
execute unless entity @n[type=!#undead, type=!#frog_food, tag=!goldark.paths.vempyre, nbt={ HurtTime: 10s }, distance=..6] run return fail



# Tag victim
tag @n[type=!#undead, type=!#frog_food, tag=!goldark.paths.vempyre, nbt={ HurtTime: 10s }, distance=..6] add goldark.temp.take_blood

# Add score to player
execute at @n[type=!#undead, type=!#frog_food, tag=goldark.temp.take_blood, distance=..6] \
        run scoreboard players add @s goldark.ability_clock 3

# Add extra if victim was humanoid
execute at @n[type=!#undead, type=!#frog_food, tag=goldark.temp.take_blood, distance=..6] \
        if entity @s[advancements={ goldark-paths:paths/vempyre/take_blood/entity_humanoid=true }] run scoreboard players add @s goldark.ability_clock 4

# Give Saturation
execute at @n[type=!#undead, type=!#frog_food, tag=goldark.temp.take_blood, distance=..6] run effect give @s saturation 1 0 true

# Display audiovisual feedback
execute at @n[type=!#undead, type=!#frog_food, tag=goldark.temp.take_blood, distance=..6] run particle dust_color_transition{ from_color: 5374723, to_color: 2031873, scale: 0.7 } ~ ~1 ~ 0.2 0.4 0.2 1.0 10 force

execute if entity @n[type=!#undead, type=!#frog_food, tag=goldark.temp.take_blood, distance=..6] \
        unless entity @s[advancements={ goldark-paths:paths/vempyre/take_blood/entity_humanoid=true }] \
        run playsound entity.generic.burn player @s ~ ~ ~ 0.6 0.8

execute if entity @n[type=!#undead, type=!#frog_food, tag=goldark.temp.take_blood, distance=..6] \
        if entity @s[advancements={ goldark-paths:paths/vempyre/take_blood/entity_humanoid=true }] \
        run playsound entity.generic.eat player @s ~ ~ ~ 0.6 0.8


# Take health
damage @n[type=!#undead, type=!#frog_food, tag=goldark.temp.take_blood, distance=..6] 2 dry_out

# Display blood meter
execute if entity @n[type=!#undead, type=!#frog_food, tag=goldark.temp.take_blood, distance=..6] run function goldark-paths:paths/vempyre/display_blood


# Remove extra trigger
advancement revoke @s only goldark-paths:paths/vempyre/take_blood/entity_humanoid

# Remove tag
tag @n[type=!#undead, type=!#frog_food, tag=goldark.temp.take_blood, distance=..6] remove goldark.temp.take_blood
