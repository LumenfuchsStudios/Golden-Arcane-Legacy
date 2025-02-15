execute if score @s goldark.path_level.werewoof matches 3.. run return 0


function goldark.paths:effects/holy_sickness/overlay

scoreboard players add @s goldark.path_level.werewoof 1


tellraw @s[scores={ goldark.path_level.werewoof=2 }] [ "", \
    { "text": "* Your ", "color": "red" }, \
    { "text": "Lycanthropy", "color": "dark_gray", "bold": true }, \
    { "text": " has evolved to Level II.", "color": "red" } \
]

tellraw @s[scores={ goldark.path_level.werewoof=3 }] [ "", \
    { "text": "* Your ", "color": "red" }, \
    { "text": "Lycanthropy", "color": "dark_gray", "bold": true }, \
    { "text": " has evolved to Level III.", "color": "red" } \
]

tellraw @s[scores={ goldark.path_level.werewoof=4.. }] [ "", \
    { "text": "* Your ", "color": "red" }, \
    { "text": "Lycanthropy", "color": "dark_gray", "bold": true }, \
    { "text": " has evolved to something unthinkable of...", "color": "red" } \
]