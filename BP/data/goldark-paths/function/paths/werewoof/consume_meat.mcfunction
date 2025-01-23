## * Grants the user extra effects upon consumption of meat.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Grant effects
effect give @s[advancements={ goldark-paths:paths/werewoof/consume_raw_meat=true }] saturation 2 1
effect give @s[advancements={ goldark-paths:paths/werewoof/consume_cooked_meat=true }] hunger 8 2

# Revoke triggers
advancement revoke @s[advancements={ goldark-paths:paths/werewoof/consume_raw_meat=true }] only goldark-paths:paths/werewoof/consume_raw_meat
advancement revoke @s[advancements={ goldark-paths:paths/werewoof/consume_cooked_meat=true }] only goldark-paths:paths/werewoof/consume_cooked_meat