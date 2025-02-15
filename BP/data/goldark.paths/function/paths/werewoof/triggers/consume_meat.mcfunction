## * Grants the user extra effects upon consumption of meat.
## * 
## * Last modified: January 26th, 2025 (AydenTFoxx)


# Grant effects
effect give @s[advancements={ goldark.paths:paths/werewoof/trigger/consume_raw_meat=true }] saturation 2 1

effect give @s[advancements={ goldark.paths:paths/werewoof/trigger/consume_cooked_meat=true }] hunger 12 4

# Revoke triggers
advancement revoke @s only goldark.paths:paths/werewoof/trigger/consume_raw_meat
advancement revoke @s only goldark.paths:paths/werewoof/trigger/consume_cooked_meat