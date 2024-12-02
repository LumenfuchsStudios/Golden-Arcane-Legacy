## * PURITY: Thy actions have been seen and rewarded. No more burny Iron for ya.
## * 
## * Last modified: December 1st, 2024 (AydenTFoxx)


particle explosion_emitter ~ ~0.5 ~ .5 .5 .5 1 1 force
particle totem_of_undying ~ ~ ~ .1 .1 .1 0.5 50

playsound entity.wither.death master @s ~ ~ ~ 0.8 2
playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1.2

tellraw @s { "text": "| The Gods take notice of your endurance...", "color": "gold", "italic": true }
tellraw @s [{ "text": "[+] You are now immune to ", "color": "aqua" }, { "text": "Holy Sickness", "color": "yellow", "bold": true }]

effect clear @s darkness
effect clear @s slowness

effect give @s resistance 30 0
effect give @s regeneration 30 0

# ...
# add Holy Sickness mini-spell
# ...

scoreboard players set @s goldark.effect_timer.holy_sickness 0

tag @s remove goldark.holy_sickness.active
tag @s remove goldark.holy_sickness.based
tag @s remove goldark.holy_sickness.pure

tag @s add goldark.perks.holy_immune