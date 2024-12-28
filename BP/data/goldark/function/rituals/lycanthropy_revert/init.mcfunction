## * Initializes a Lycanthropy Reversal Rite when building the correct Altar.
## * The advancement is only triggered if the Soul Lantern is the last block to be placed,
## * and the triggering player is above the Soul Lantern block.
## * 
## * Last modified: December 14th, 2024 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark:internal/build_structure/ritual_lycanthropy_revert


# Require Lycanthropy Altar for ritual
execute unless predicate goldark:ritual/lycanthropy_revert run return fail

# Require New Moon night for ritual
execute unless score #goldark_moon_phase goldark.dummy matches 7 \
        unless score #goldark_time_day goldark.dummy matches 13000..23000 \
        run return fail


# Convert pillars
setblock ~2 ~ ~2 blackstone replace
setblock ~2 ~ ~-2 blackstone replace
setblock ~-2 ~ ~2 blackstone replace
setblock ~-2 ~ ~-2 blackstone replace

setblock ~2 ~1 ~2 blackstone replace
setblock ~2 ~1 ~-2 blackstone replace
setblock ~-2 ~1 ~2 blackstone replace
setblock ~-2 ~1 ~-2 blackstone replace

setblock ~2 ~2 ~2 gilded_blackstone replace
setblock ~2 ~2 ~-2 gilded_blackstone replace
setblock ~-2 ~2 ~2 gilded_blackstone replace
setblock ~-2 ~2 ~-2 gilded_blackstone replace

# Consume catalysts
setblock ~ ~ ~2 fire destroy
setblock ~ ~ ~-2 fire destroy
setblock ~2 ~ ~ fire destroy
setblock ~-2 ~ ~ fire destroy

# Convert Soul-block below
setblock ~ ~-1 ~ nether_wart_block


# Display audiovisual feedback
playsound ambient.soul_sand_valley.mood neutral @a[distance=..32] ~ ~ ~ 1 1.2 0.3
playsound entity.ghast.hurt neutral @a[distance=..32] ~ ~ ~ 1 0.7 0.3

particle flame ~ ~1 ~ 1.0 1.0 1.0 0.1 20


# Init Dummy
execute align xyz run summon marker ~0.5 ~ ~0.5 { Tags: [ goldark.dummy_ritual.lycanthropy_revert ] }