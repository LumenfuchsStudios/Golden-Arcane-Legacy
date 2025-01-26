## * Module Manager: MAGIC
## * Mystical features which do not fall under other common categories (like Spells or Rituals).
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


## SCARECROW/SCAREBOW

# Update scarecrows
execute as @e[type=item_display, tag=goldark.entity.scarecrow] at @s \
        if loaded ~ ~ ~ run function goldark.magic:magic/scarecrow/update

# Update scarebows
execute as @e[type=item_display, tag=goldark.entity.scarebow] at @s \
        if loaded ~ ~ ~ run function goldark.magic:magic/scarebow/update