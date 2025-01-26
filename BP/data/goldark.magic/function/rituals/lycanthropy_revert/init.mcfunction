## * Initializes a Lycanthropy Reversal Rite when building the correct Altar.
## * The advancement is only triggered if the Soul Lantern is the last block to be placed,
## * and the triggering player is above the Soul Lantern block.
## * 
## * Last modified: January 24th, 2025 (AydenTFoxx)


# Revoke trigger
advancement revoke @s only goldark.magic:internal/build_structure/ritual_lycanthropy_revert


# Ignore if player is too far away
execute unless entity @s[distance=..2] run return fail

# Require Lycanthropy Reversal Altar for ritual
execute unless predicate goldark.magic:rituals/lycanthropy_revert positioned ~ ~-1 ~ \
        unless function goldark.magic:rituals/lycanthropy_revert/init at @s anchored eyes positioned ^ ^ ^1 \
        unless function goldark.magic:rituals/lycanthropy_revert/init positioned ^ ^ ^1 \
        unless function goldark.magic:rituals/lycanthropy_revert/init run return fail

# Require New Moon night for ritual
execute unless score #goldark_moon_phase goldark.dummy matches 4 \
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