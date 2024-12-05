## * Runs each sub-section of Golden Arcane at a specified Tick Rate (#goldark_tick_rate)
## *
## *? Note: May hit the function recursion cap when running several entities!
## *?       If functions stop working unexplainably, try adding the below functions to #minecraft:tick instead.
## * 
## * Last modified: November 29th, 2024 (AydenTFoxx)


## INIT

# Tick GoldArk Clock
scoreboard players add #goldark_tick goldark.dummy 1


## MODULE MANAGERS -- Golden Arcane Tick
# Upon reaching the target Minecraft tick, all Module Manager functions are called as follows:


## Arcane Paths Manager (goldark:paths/...)
execute if score #goldark_tick goldark.dummy = #goldark_tick_rate goldark.dummy run function goldark:paths/main

## Spells Manager (goldark:spells/...)
execute if score #goldark_tick goldark.dummy = #goldark_tick_rate goldark.dummy run function goldark:spells/main

## Dimension Manager (goldark:???)
#execute if score #goldark_tick goldark.dummy = #goldark_tick_rate goldark.dummy run function goldark:dimensions/main


## MODULE MANAGERS -- Minecraft Tick
# The following managers are run every game tick, regardless of the target Golden Arcane tick rate:

## Effects Manager (goldark:effects/...) (*)
function goldark:effects/main


## END

# Reset GoldArk Clock
execute if score #goldark_tick goldark.dummy = #goldark_tick_rate goldark.dummy run scoreboard players set #goldark_tick goldark.dummy 0