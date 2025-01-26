## * Creates a Judgement AoE at the position hit by the spell's projectile.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Summon AoE
execute align xyz run summon marker ~0.5 ~0.5 ~0.5 { Tags: [ goldark.dummy_spell.judgement ] }

# Display audiovisual feedback
playsound block.amethyst_block.break player @a[distance=..16] ~ ~ ~ 1 1.2
particle end_rod ~ ~ ~ .1 .1 .1 0.5 20


# Remove self
kill @s[type=#goldark:technical]