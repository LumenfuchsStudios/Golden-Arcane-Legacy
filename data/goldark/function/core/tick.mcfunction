## * Runs each sub-section of Golden Arcane at a specified Tick Rate (#goldark_tick_rate)
## * 
## * Last modified: November 25th, 2024 (AydenTFoxx)


# Increment Tick value
scoreboard players add #goldark_tick goldark.dummy 1


# At the specified interval (#goldark_tick_rate), call every code Manager:

## Magic Manager (goldark:magic/)
execute if score #goldark_tick goldark.dummy = #goldark_tick_rate goldark.dummy run function goldark:magic/main

## Spell Manager (goldark)
#execute if score #goldark_tick goldark.dummy = #goldark_tick_rate goldark.dummy run function goldark:spells/main

## Dimension Manager (goldark)
#execute if score #goldark_tick goldark.dummy = #goldark_tick_rate goldark.dummy run function goldark:dimensions/main

## Golden Arrow (garrow)
#execute if score #goldark_tick goldark.dummy = #goldark_tick_rate goldark.dummy run function garrow:main


# Finally, reset Tick back to zero.
execute if score #goldark_tick goldark.dummy = #goldark_tick_rate goldark.dummy run scoreboard players set #goldark_tick goldark.dummy 0