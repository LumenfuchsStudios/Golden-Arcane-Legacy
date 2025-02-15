execute if score @s goldark.path_level.vempyre matches 3.. run return 0


function goldark:tools/cave_noise

scoreboard players add @s goldark.path_level.vempyre 1


tellraw @s[scores={ goldark.path_level.vempyre=2 }] [ "", \
    { "text": "# Your ", "color": "red" }, \
    { "text": "Vempyrism", "color": "dark_red", "bold": true }, \
    { "text": " has evolved to Level II.", "color": "red" } \
]

tellraw @s[scores={ goldark.path_level.vempyre=3 }] [ "", \
    { "text": "#s Your ", "color": "red" }, \
    { "text": "Vempyrism", "color": "dark_red", "bold": true }, \
    { "text": " has evolved to Level III.", "color": "red" } \
]

tellraw @s[scores={ goldark.path_level.vempyre=4.. }] [ "", \
    { "text": "* Your ", "color": "red" }, \
    { "text": "Vempyrism", "color": "dark_red", "bold": true }, \
    { "text": " has evolved to something unthinkable of...", "color": "red" } \
]