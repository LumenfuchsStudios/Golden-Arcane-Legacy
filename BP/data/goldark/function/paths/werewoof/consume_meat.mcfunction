# Grant effects
effect give @s[advancements={ goldark:paths/werewoof/consume_raw_meat=true }] saturation 2 1
effect give @s[advancements={ goldark:paths/werewoof/consume_cooked_meat=true }] hunger 8 2

# Revoke triggers
advancement revoke @s[advancements={ goldark:paths/werewoof/consume_raw_meat=true }] only goldark:paths/werewoof/consume_raw_meat
advancement revoke @s[advancements={ goldark:paths/werewoof/consume_cooked_meat=true }] only goldark:paths/werewoof/consume_cooked_meat