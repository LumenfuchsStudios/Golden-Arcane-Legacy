## * Summons a small, slow traveling projectile which casts a Judgement aura on impact.
## * 
## * Last modified: December 11th, 2024 (AydenTFoxx)


# Revoke trigger advancement
advancement revoke @s only goldark:internal/use_item/spell_judgement

# The unholy shalt not trespass
execute unless entity @s[tag=goldark.perks.holy_immune] run playsound ambient.nether_wastes.mood player @s ~ ~ ~ 1 0.7
execute unless entity @s[tag=goldark.perks.holy_immune] run particle large_smoke ~ ~ ~ .1 .3 .1 0.01 30
execute unless entity @s[tag=goldark.perks.holy_immune] run return run summon tnt ~ ~1 ~


# Summon trigger with caster's rotation
summon marker ~ ~1.6 ~ { Tags: [ goldark.dummy_magic.judgement_trigger ] }

data modify entity @n[type=marker, tag=goldark.dummy_magic.judgement_trigger, distance=..2] Rotation set from entity @s Rotation

# Display audiovisual feedback
playsound block.amethyst_block.resonate player @a[distance=..16] ~ ~ ~ 1 1.2
particle end_rod ~ ~1 ~ .1 .1 .1 0.1 20