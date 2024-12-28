## * Runs each sub-section of Golden Arcane at a specified Tick Rate (#goldark_tick_rate)
## *
## *? Note: May hit the function recursion cap when running with several entities!
## *?       If functions stop working unexplainably, try adding the below functions to #minecraft:tick instead.
## * 
## * Last modified: December 8th, 2024 (AydenTFoxx)


## ALWAYS RUN

# Run always-tick functions (run every Minecraft tick)
function #goldark:tick_always

# Trigger reload hook
execute as @a[scores={ goldark.reload=1.. }] run function goldark:debug/reload_trigger


## GOLDARK CLOCK

# Tick GoldArk Clock
scoreboard players add #goldark_tick goldark.dummy 1

# Upon reaching the target Minecraft tick, a Golden Arcane tick begins
# Functions tagged as "tick-rated" are run here
execute if score #goldark_tick goldark.dummy = #goldark_tick_rate goldark.dummy run function #goldark:tick_rated

# Reset GoldArk Clock
execute if score #goldark_tick goldark.dummy >= #goldark_tick_rate goldark.dummy run scoreboard players set #goldark_tick goldark.dummy 0