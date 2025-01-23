## * Displays a Soul Link's durability when picked up.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark-magic:internal/hold_soul_link

# Display durability
execute if items entity @s weapon.mainhand quartz if data entity @s SelectedItem.components.minecraft:custom_data.goldark.soul_link.uses \
        run title @s actionbar { "translate": "[ Durability: %s ]", "color": "gray", "with": [ { "nbt": "SelectedItem.components.minecraft:custom_data.goldark.soul_link.uses", "entity": "@s" } ] }