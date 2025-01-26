![Title logo, a yellow Minecraft-style lettering which reads "Golden Arcane"](/logo_title.png)

# Golden Arcane

> [!WARNING]
> This project is in its very early stages; Features are being added, tweaked, edited and removed left and right -- you should NOT include this in a world you care for.  

**Golden Arcane** is a *Minecraft: Java Edition* datapack exploring the concept of magic with a common motif: Gold.

From ancient deities to reality-tearing rituals, forbidden knowledge and odd artifacts of olden times, the world is full of new magic everywhere for the keen-eyed to find.

## About

> "Upon the legendary creation of the Universe, four Divine Forces were conceived. Of those, *Auryos*, God of Gold, bears the closest link to mankind. By its blessings upon the world, scholars are able to channel mystical energies into their will, thus conjuring supernatural change to their reality."

TO WRITE. Sorry.

## Installation & Update

Download the ZIP archive from the [latest release version](https://github.com/LumenfuchsStudios/GoldenArcane/releases) and extract it on your world's `datapacks` folder. Open the world (or type `/reload` if it was already open) and the pack should be enabled.

To update an existing world's datapack, delete the `Golden-Arcane` folder at `datapacks` and repeat the same procedures above.

> For more information, see the *Minecraft Wiki* page on [how to install a datapack](https://minecraft.wiki/w/Tutorial:Installing_a_data_pack).

## Usage

An in-game guide is currently being worked on using the [Lavender](https://modrinth.com/mod/lavender) mod. In the meantime, here's a summed-up list of features added by Golden Arcane so far:

* 4 magical-themed items (Thunder Egg, Thunderous Egg, Spell: Judgement, Soul Shard)
  * 1 Creative-only/debug item (Remover Stick)
  * All can be obtained by running `/function goldark:debug/give/...`
* 2 "class-like" *Arcane Paths* (Werewoof, Vempyre)
  * Werewoof can transform into a Wolf at will (for players: CTRL+S; for mobs: every Full Moon), has higher jump, strength and mining speed; Is weak to Iron and can't hold/touch it for too long.
  * Vempyre has multiple abilities fueled by blood, which is obtained by punching or killing any creature except undead mobs (Zombies, Skeletons, Phantoms, etc.), Slimes and Magma Cubes; Is vulnerable to sunlight, but drinking any potion (even a Water Bottle) grants a few seconds of safety.
    * First ability is *Lunge*, triggered by CTRL+SHIFT+W. When enabled, the player is much faster and jumps way higher for a couple seconds; Attacks are less effective while Lunge is active, however.
    * Second ability is *Heal*, triggered by CTRL+SHIFT+S. When enabled, the player heals a few hearts over time.
    * Third ability is *Shroud*, triggered by CTRL+SHIFT+A+D. When enabled, the player goes invisible and is much slower, but the next attack is far stronger. Also has the ability to "warp" through solid blocks (CTRL+SHIFT+W), at the cost of the ability's duration.
  * Lycanthropy (Werewoof) can be achieved with a special structure (available on the Lavender book "goldark:codex"), or with the command `/function goldark.paths:tools/lycanthropy/convert`
  * Vempyrism (Vempyre) can be achieved by perishing under the Bloodlust effect (obtainable with a craftable Vial of Bloodlust (the stronger, enchanted variant of the Vial of Blood potion)), or with the command `/function goldark.paths:tools/vempyrism/convert`
* 4 new custom effects (Holy Sickness, Holy Numbness, Purity, Bloodlust)
  * Holy Sickness is obtained when holding, touching or wearing an Iron-related item as a Werewoof, by standing under sunlight as a Vempyre, or by being within the AoE of a Judgement spell.
    * Has several levels, each with varying degrees of danger and destructiveness to the environment.
    * The final level (**V** - `By Your Will`) grants immunity to this effect if survived long enough.
    * Triggers for the effect can stack, causing levels to occur at a much higher pace than usual.
  * Holy Numbness is obtainable as a craftable potion, by consuming Golden/Enchanted Golden Apples, when drinking a potion under sunlight as a Vempyre, or by holding/wearing an item with the *Holy Numbness* enchantment.
    * Has one level. When active, reduces Holy Sickness by a flat amount, preventing its effects when only one or two triggers are active.
    * Prevents Holy Sickness' levels IV and V from occurring entirely, which may also prevent immunity from being achieved.
  * Purity is obtainable as a craftable potion only.
    * Has two levels. When active, removes all status effects (vanilla or Golden Arcane's) from the user.
    * Its stronger variant (Potion of Purification) removes status effects and any Arcane Path(s) from the user, but does not apply the Purity effect itself.
  * Bloodlust is obtainable by consuming blood from a Vial of Blood, which may be crafted or obtained by a Vempyre when hitting a humanoid (Villagers, Pillagers, Piglins, etc) with an empty bottle.
    * Has two levels. Has no effect of its own (even in the code itself); However, drinking a Vial of Blood does have its own effects depending on whether the player is a Vempyre or not.
    * Drinking its stronger variant (Vial of Bloodlust) and dying to a mob's direct attack (i.e. death message reads "was slain by ...") while under its effect will turn the player into a Vempyre.
* 3 new enchantments (Holy Numbness, Iron Aspect, Vempyric)
  * Holy Numbness is compatible (i.e. can be applied) with any Iron gear, and incompatible with all Protection enchantments.
    * Has one level; Grants the Holy Numbness effect whenever Holy Sickness is triggered.
    * Items enchanted with this are 20% *less* durable if the user is a Werewoof.
  * Iron Aspect is compatible with any enchantable gear, and incompatible with damage enchantments (Sharpness, Smite, Bane of Arthropods, etc), as well as the *Vempyric* enchantment.
    * Has two levels. Deals +20%/+40% damage and inflicts Poison to mobs and players with the Werewoof Path.
    * Items with this enchantment are 33%/50% *more* durable.
  * Vempyric is compatible with any weapon, and incompatible with all damage enchantments, including *Iron Aspect*.
    * Has three levels. Deals -50%/-70%/-90% damage to non-undead humanoid entities (Villagers, Illagers, Piglins, etc.), and +25%/+50%/+75% damage undead humanoids (Zombies, Skeletons, Zombified Piglins, etc.).
    * If the player is a Vempyre, hitting a mob will count as "drinking" their blood, increasing the player's blood meter as if hitting that entity bare-handed.
  * Iron Aspect and Holy Numbness may be obtained at an Enchanting Table.
* 2 new structures (Scarecrow, Scarebow) -- neither are spawned naturally.
  * The Scarecrow is built in the same fashion as in Pillager Outposts; The Lavender book `goldark:codex` also provides a visual representation of it.
    * When active, all mobs within a 16-block radius and inside the Scarecrow's vision range will be "scared away", preventing them from approaching the structure.
  * The Scarebow has the same pattern as the Scarebow, except with a Target block instead of a Hay Bale.
    * When active, all projectiles (including from the player) in a 16-block radius and within the Scarebow's vision range will be stopped in motion; Arrows will break, thrown projectiles will fall to the floor, and tridents will be pushed away until out of range.
  * Both structures can be made with a Jack o' Lantern in place of the Pumpkin, or a light-emitting small object (Torch, Lantern, Candles, etc.) can be put inside the active Scarecrow/Scarebow to make it visually a Jack o' Lantern. This has no effect on the structure's behavior or effectiveness.
    * Putting a soul-fire light-emitting item (Soul Torch, Soul Lantern, Soul Campfire even) or Redstone Torch will make the Scarecrow/Scarebow target mobs in its radius regardless of whether it can see them. All but the Redstone Torch will also make the Scarecrow's head a Jack o' Lantern.
  * Despite being correctly built and valid for activation, scarecrows spawned around Pillager Outposts are *not* automatically turned into Golden Arcane's Scarecrow entity. You will need to break the Pumpkin and place it back for the structure to be activated.

## License

**Golden Arcane** is licensed under the [GNU GPL-v3.0 License](https://choosealicense.com/licenses/gpl-3.0/).
