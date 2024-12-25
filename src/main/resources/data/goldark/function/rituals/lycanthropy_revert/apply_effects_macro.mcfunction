## * Applies the ritual's effects and particles based on a provided GUID.
## * 
## * Last modified: December 14th, 2024 (AydenTFoxx)

## ? MACRO Arguments:
# ? target: The GUID score of the entity to be targeted for the effects.


# Apply effects
$effect give @n[type=!#goldark:magic_immune, tag=goldark.paths.werewoof, scores={ goldark.guid=$(target) }, distance=..512] hunger 5
$effect give @n[type=!#goldark:magic_immune, tag=goldark.paths.werewoof, scores={ goldark.guid=$(target) }, distance=..512] nausea 5
$effect give @n[type=!#goldark:magic_immune, tag=goldark.paths.werewoof, scores={ goldark.guid=$(target) }, distance=..512] slowness 5

# Display feedback
$execute at @n[type=!#goldark:magic_immune, tag=goldark.paths.werewoof, scores={ goldark.guid=$(target) }, distance=..512] run particle flame ~ ~1 ~ .1 .1 .1 0.1 2
$execute at @n[type=!#goldark:magic_immune, tag=goldark.paths.werewoof, scores={ goldark.guid=$(target) }, distance=..512] run particle portal ~ ~1 ~ .1 .1 .1 0.1 5