execute align xyz run summon marker ~0.5 ~0.5 ~0.5 { Tags: [ goldark.dummy_spell.judgement ] }

playsound block.amethyst_block.break player @a[distance=..16] ~ ~ ~ 1 1.2
particle end_rod ~ ~ ~ .1 .1 .1 0.5 20

kill @s[type=#goldark:technical]