## * Applies the ritual's effects and particles based on a provided GUID.
## * 
## * Last modified: December 14th, 2024 (AydenTFoxx)

## ? MACRO Arguments:
# ? target: The GUID score of the entity to be targeted for the effects.


# Grant Darkness
$effect give @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=..512] darkness 5 1 true

# Apply effects
$effect give @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=..512] wither 2
$effect give @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=..512] hunger 5
$effect give @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=..512] nausea 5
$effect give @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=..512] weakness 5

# Display feedback
$execute at @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=..512] run particle nautilus ~ ~1 ~ .1 .1 .1 0.1 2
$execute at @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=..512] run particle portal ~ ~1 ~ .1 .1 .1 0.1 4