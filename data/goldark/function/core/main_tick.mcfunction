## # AydenTFoxx @ August 31st - September 8th, 2024

# * GoldArk's Core Functions Manager; Runs each module's "main" function on a specified tick rate -- a GoldArk tick.
# * This tick rate currently may only be changed by directly editing the fake players' scoreboard values.

# ? Run by: #minecraft:tick


scoreboard players add #goldark_tick goldark.dummy 1


## Spell Manager (goldark)
execute if score #goldark_tick goldark.dummy = #goldark_tick_rate goldark.dummy run function goldark:spells/main

## Dimension Manager (goldark)
execute if score #goldark_tick goldark.dummy = #goldark_tick_rate goldark.dummy run function goldark:dimensions/main

## Golden Arrow (garrow)
execute if score #goldark_tick goldark.dummy = #goldark_tick_rate goldark.dummy run function garrow:main


execute if score #goldark_tick goldark.dummy = #goldark_tick_rate goldark.dummy run scoreboard players set #goldark_tick goldark.dummy 0