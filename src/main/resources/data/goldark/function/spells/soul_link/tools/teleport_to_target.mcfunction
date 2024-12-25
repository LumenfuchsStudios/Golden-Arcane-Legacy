## * Teleports a Soul Link item and the nearest player to its stored target.
## * 
## * Last modified: December 17th, 2024 (AydenTFoxx)

## ? MACRO Arguments:
# ? target: The GUID of the entity to be affected.


# Ignore if entity is too close
$execute if entity @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=..2] run return fail


# Display audiovisual feedback
particle explosion ~ ~1 ~ 0.0 0.0 0.0 1.0 1

particle end_rod ~ ~1 ~ .1 .3 .1 0.08 20
particle portal ~ ~1 ~ .0 .3 .0 1.0 30

# Teleport to target
$tp @p[predicate=goldark:player_input/sneak, predicate=goldark:player_input/sprint, distance=..4] \
    @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=2..512]

$tp @s @n[type=!#goldark:magic_immune, scores={ goldark.guid=$(target) }, distance=2..512]


# Reduce durability
function goldark:spells/soul_link/tools/reduce_durability