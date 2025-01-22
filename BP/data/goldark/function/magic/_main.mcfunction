## * Module Manager: MAGIC
## * Mystical features which do not fall under other common categories (like Spells or Rituals).
## * 
## * Last modified: December 21st, 2024 (AydenTFoxx)


## SCARECROW/SCAREBOW

# Update scarecrows
execute as @e[type=item_display, tag=goldark.entity.scarecrow] at @s \
        if loaded ~ ~ ~ run function goldark:magic/scarecrow/update

# Update scarebows
execute as @e[type=item_display, tag=goldark.entity.scarebow] at @s \
        if loaded ~ ~ ~ run function goldark:magic/scarebow/update