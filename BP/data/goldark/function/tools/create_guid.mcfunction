## * Grants an entity a Globally Unique IDentifier (GUID), and increments the global counter.
## * 
## * Last modified: December 14th, 2024 (AydenTFoxx)


# Set GUID
scoreboard players operation @s goldark.guid = #goldark_guid goldark.guid

# Increment value
scoreboard players add #goldark_guid goldark.guid 1