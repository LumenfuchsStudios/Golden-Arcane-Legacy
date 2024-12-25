## * Initializes Golden Arcane-specific Effect Timers.
## * Each custom effect must have a respective Timer here to avoid overlaps.
## * 
## * Last modified: December 5th, 2024 (AydenTFoxx)


### BUFFS

## Vengeance
# - Grants the User increased strength and agility;
# - Damage received is reduced and has a chance to be reflected to the attacker;
# - Receiving damage while this buff is active will increase its duration.
#scoreboard objectives add goldark.effect_timer.vengeance dummy

## Holy Numbness
# - Increases the time taken for Holy Sickness to worsen.
# - Prevents Holy Sickness IV and V from occurring.
scoreboard objectives add goldark.effect_timer.holy_numbness dummy [{ "text": "Effect: ", "color": "dark_green" }, { "text": "Holy Numbness", "color": "green" }]


### DEBUFFS

## Inferno
# - Engulfs its victim in flames, dealing high DoT and slowing them down.
# - Generates a small, non-destructive explosion upon expiring.
# - Enemies immune to fire are also immune to this effect.
#scoreboard objectives add goldark.effect_timer.inferno dummy [{ "text": "Effect: ", "color": "dark_green" }, { "text": "Inferno", "color": "dark_red" }]

## Holy Sickness
# - Causes Nausea and damaging effects over time;
# -- Effects stack with time or increased exposure.
scoreboard objectives add goldark.effect_timer.holy_sickness dummy [{ "text": "Effect: ", "color": "dark_green" }, { "text": "Holy Sickness", "color": "red" }]