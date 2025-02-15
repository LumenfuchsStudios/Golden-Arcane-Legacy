# Level II
execute if score @s goldark.path_level.vempyre matches 2.. run summon bat ~0.5 ~ ~ { NoAI: 1b, Tags: [ goldark.vempyre.bat_decoy ] }
execute if score @s goldark.path_level.vempyre matches 2.. run summon bat ~-0.5 ~ ~ { NoAI: 1b, Tags: [ goldark.vempyre.bat_decoy ] }
execute if score @s goldark.path_level.vempyre matches 2.. run summon bat ~ ~ ~-0.5 { NoAI: 1b, Tags: [ goldark.vempyre.bat_decoy ] }
execute if score @s goldark.path_level.vempyre matches 2.. run summon bat ~ ~ ~0.5 { NoAI: 1b, Tags: [ goldark.vempyre.bat_decoy ] }

# Level III
execute if score @s goldark.path_level.vempyre matches 3.. run summon bat ~1 ~1 ~ { NoAI: 1b, Tags: [ goldark.vempyre.bat_decoy, goldark.vempyre.bat_decoy_strong ], Invulnerable: 1b, Fire: 80s }
execute if score @s goldark.path_level.vempyre matches 3.. run summon bat ~-1 ~1 ~ { NoAI: 1b, Tags: [ goldark.vempyre.bat_decoy, goldark.vempyre.bat_decoy_strong ], Invulnerable: 1b, Fire: 80s }
execute if score @s goldark.path_level.vempyre matches 3.. run summon bat ~ ~1 ~-1 { NoAI: 1b, Tags: [ goldark.vempyre.bat_decoy, goldark.vempyre.bat_decoy_strong ], Invulnerable: 1b, Fire: 80s }
execute if score @s goldark.path_level.vempyre matches 3.. run summon bat ~ ~1 ~1 { NoAI: 1b, Tags: [ goldark.vempyre.bat_decoy, goldark.vempyre.bat_decoy_strong ], Invulnerable: 1b, Fire: 80s }