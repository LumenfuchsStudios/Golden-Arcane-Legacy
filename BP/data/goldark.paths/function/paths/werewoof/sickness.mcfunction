## * Manages Werewooves' allergy to Iron, with a specific debuff tied to it.
## * 
## * Last modified: January 23rd, 2025 (AydenTFoxx)


# Grant Holy Sickness -- Items
execute if items entity @s weapon.* #goldark:iron/any run tag @s[tag=!goldark.holy_sickness.active] add goldark.holy_sickness.active
execute if items entity @s armor.* #goldark:iron/any run tag @s[tag=!goldark.holy_sickness.active] add goldark.holy_sickness.active
execute if items entity @s[tag=goldark.holy_sickness.active] armor.* #goldark:iron/pure run tag @s[tag=!goldark.holy_sickness.pure] add goldark.holy_sickness.pure
execute if items entity @s[tag=goldark.holy_sickness.active] weapon.* #goldark:iron/pure run tag @s[tag=!goldark.holy_sickness.pure] add goldark.holy_sickness.pure
execute if items entity @s[tag=goldark.holy_sickness.active] armor.* #goldark:iron/based run tag @s[tag=!goldark.holy_sickness.based] add goldark.holy_sickness.based
execute if items entity @s[tag=goldark.holy_sickness.active] weapon.* #goldark:iron/based run tag @s[tag=!goldark.holy_sickness.based] add goldark.holy_sickness.based

# Grant Holy Sickness -- Blocks
execute if function goldark.paths:paths/werewoof/touches_iron/any run tag @s[tag=!goldark.holy_sickness.active] add goldark.holy_sickness.active
execute if function goldark.paths:paths/werewoof/touches_iron/pure run tag @s[tag=goldark.holy_sickness.active] add goldark.holy_sickness.pure_block
execute if function goldark.paths:paths/werewoof/touches_iron/based run tag @s[tag=goldark.holy_sickness.active] add goldark.holy_sickness.based


# Harm player (Block)
execute unless score @s goldark.effect_timer.holy_numbness matches 1.. \
        run damage @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.pure_block] 1 on_fire

# Harm player (Armor)
execute if entity @s[tag=goldark.holy_sickness.active] unless entity @s[gamemode=spectator] unless score @s goldark.effect_timer.holy_numbness matches 1.. \
        if items entity @s armor.* #goldark:iron/pure run damage @s 1 in_fire

# Harm player (Entity)
execute unless score @s goldark.effect_timer.holy_numbness matches 1.. \
        if entity @n[type=#goldark:iron_type, distance=..1] run damage @s 1 on_fire


# Increase Debuff Timer
execute if entity @s[tag=goldark.holy_sickness.pure] run scoreboard players add @s goldark.effect_timer.holy_sickness 3
execute if entity @s[tag=goldark.holy_sickness.pure_block] run scoreboard players add @s goldark.effect_timer.holy_sickness 4

execute if entity @s[tag=goldark.holy_sickness.based] run scoreboard players add @s goldark.effect_timer.holy_sickness 1

execute if items entity @s weapon.* #goldark:iron/heavy run scoreboard players add @s[tag=goldark.holy_sickness.active] goldark.effect_timer.holy_sickness 3


# Revoke Holy Sickness
execute if entity @s[tag=goldark.holy_sickness.pure] unless items entity @s weapon.* #goldark:iron/pure run tag @s remove goldark.holy_sickness.pure
execute if entity @s[tag=goldark.holy_sickness.pure_block] unless function goldark.paths:paths/werewoof/touches_iron/pure run tag @s remove goldark.holy_sickness.pure_block

execute if entity @s[tag=goldark.holy_sickness.based] unless items entity @s weapon.* #goldark:iron/based \
        unless function goldark.paths:paths/werewoof/touches_iron/based \
        run tag @s remove goldark.holy_sickness.based

execute if entity @s[tag=goldark.holy_sickness.active] unless items entity @s weapon.* #goldark:iron/any unless items entity @s armor.* #goldark:iron/pure \
        unless function goldark.paths:paths/werewoof/touches_iron/any \
        unless entity @n[type=#goldark:technical, tag=goldark.dummy_spell.judgement, distance=..3] \
        run tag @s remove goldark.holy_sickness.active