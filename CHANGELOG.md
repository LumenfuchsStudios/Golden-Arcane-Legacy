# Golden Arcane's Changelog

> [!NOTE]
> Page in Progress! Please be patient.

## Version 0.4.1 / 2024-12-11

### Codename: `...`

* [FEATURE] Added advancements for the Werewoof path.
* [FEATURE] Added Holy Numbness effect, which alleviates Holy Sickness in most occasions.
* ...

## Version 0.4.0 / 2024-12-08

### Codename: `Divinity`

* [META] Added Golden Arcane resource pack; Moved previous file to a new folder accordingly.
* [BUGFIX] Removed broken initial text at Holy Sickness I.
* [FEATURE] Added Judgement spell, which casts a slow-moving projectile that breaks into a Holy Sickness-inflicting AoE on impact.
* [FEATURE] Added Thunder Egg spell, which conjures a lightning where the egg breaks.
* [FEATURE] Added rare Thunderous Egg spell, a variant of the Thunder Egg which summons a dangerous Storm Cloud that conjures lightning and hurls nearby creatures into the air.
  * Both eggs' recipes are received when first obtaining the respective egg in the wild.
* [FEATURE] Added new reward for Holy Sickness' Purity, granting 12 items of the new Judgement spell and its respective recipe.
* [FEATURE] Added hidden advancements for obtaining the Thunder and Thunderous Eggs.
* [FEATURE] Added hidden advancement for surviving Holy Sickness to its very end.
* [FEATURE] Added new mechanic for turning eggs collected from a chicken into Thunder and Thunderous Eggs.
* [ENHANCEMENT] Changed Holy Sickness' audio feedback to be less deafening and/or more unique amongst each other.
* [ENHANCEMENT] Changed Holy Sickness' visual feedback to better accomodate recent updates.
* [ENHANCEMENT] Changed Holy Sickness III's Poison duration from `30` to `12` seconds.
* [ENHANCEMENT] Changed Holy Sickness V's final explosion to summon a TNT if the player is not on ground.
  * Also removed summoned snowball as it had no effect in the fireball's behavior as previously intended.
* [ENHANCEMENT] Changed Holy Sickness' Purity to remove more negative status effect.
* [TECHNICAL] Changed Golden Arcane's scoreboard objectives to have proper display names.
* [TECHNICAL] Changed the Effects module to run on every game tick, instead of being rated by the datapack's own tick rate as per usual.
* [TECHNICAL] Added a new debug tool: the Remover Stick, which one-taps any creature capable of taking damage from the player.
* [TECHNICAL] Added helper functions for giving all newly added items.

## Version 0.3.1 / 2024-12-05

### Codename: `Hotfix: Tactical Werewoof`

* [FEATURE] Added Werewoof's sickness check for iron-related blocks, with pure-type blocks dealing direct burn damage in addition to increasing Holy Sickness.
* [FEATURE] Werewoof's Wolf form now inherits all status effects and current health of its user at transformation.
* [FEATURE] Werewoof's Wolf form now also receives the Holy Sickness effect on physical contact with iron.
* [FEATURE] Added health bar for Werewooves' Wolf form while transformed.
* [ENHANCEMENT] De-transforming now grants a Werewoof a few seconds of Regeneration and Hunger.
* [BUGFIX] Fixed bug of flying rotating Werewooves.
* [BUGFIX] Fixed bug of rocket Werewooves.
* [BUGFIX] Fixed bug of Wolf form pushing its user around when the transformed mob is not a player.
* [TECHNICAL] Removed helper function for toggling the Werewoof path, as more specific and flexible functions with the same purpose were also added in the same update.
* [TECHNICAL] Added team for transformed entities, with disabled collision detection to avoid interaction with other mobs.
* [TECHNICAL] Added predicate for whether an entity is on ground.
* [TECHNICAL] Added block tags for iron-related blocks mirroring their item-type counterpars.
* [TECHNICAL] Replaced item tags for Low, Medium, and Other iron-related items with the generic "Based", for items whose recipe include iron and a non-iron ingredient.

## Version 0.3.0-b / 2024-12-02

### Codename: `Rewrite`

* [META] Removed changelog files and docs folder from the datapack.
* [FEATURE] Removed Golden Arrow.
* [FEATURE] Removed spells and charms.
* [FEATURE] Removed custom dimensions.
  * All removed features are planned to be re-added in the future, but as of yet have no planned date for reintroduction.
* [FEATURE] Added Arcane Path: Werewoof, a "class" of sorts which allows the user to transform into a Wolf at will.
* [FEATURE] Added Holy Sickness effect, inflicted when a Werewoof is holding an iron-related item.
* [TECHNICAL] Added helper functions for converting, curing and transforming the user, a nearby mob, or all mobs within a radius into the new Werewoof path.
* [TECHNICAL] Added helper function for enabling/disabling the Werewoof path on the user.
* [TECHNICAL] Added helper functions for setting, saving and restoring a player's gamemode.
* [TECHNICAL] Added predicates for detecting mob hostility (always true for `#undead` type mobs) and to check whether if an entity is a mob (i.e. not an inanimate/"technical" entity).
* [TECHNICAL] Added block tags for dye-producing flowers.
* [TECHNICAL] Added entity type tags for inanimate objects and non-mob entities, with the "magic immune" generic tag grouping all non-mob tags plus boss mobs (as of this version, the Ender Dragon and the Wither).
* [TECHNICAL] Added entity type tags for friendly humanoids ("player allies") as a counter-equivalent to vanilla's "illager allies".
* [TECHNICAL] Added item tags for iron-related items, in the following variants:
  * Heavy (9+), Medium (8-3), Low (2-1): based on how much iron an item has in its recipe;
  * Pure (only iron in its recipe), Other (Low and Medium tags), Any (all other tags).

## Version 0.3.0-a / 2024-11-24

### Codename: `Expansion`

* [FEATURE] Added new in-progress dimension: the Abyss, a desolate wasteland where darkness reigns and foul ethereal creatures thrive.
* [FEATURE] Added new in-progress dimension: Heavens, an infinitely flat realm with blooming flora and melodic ambience.
* [FEATURE] Added new charm spell: Abyss Warp, which teleports its caster to the new Abyss dimension.
  * Mostly for debug purposes, as a new method is planned in future updates.
  * Sneaking while casting teleports the nearest non-player entity in front of the caster instead.
* [FEATURE] Added new charm spell: Evoker Fangs, which summons a line of Evoker Fangs in front of the caster.
  * Sneaking while casting summons Evoker Fangs in a circle pattern of sorts around the caster instead.
* [FEATURE] Added new charm spell: Lightning Bolt, which conjures a lightning in front of the caster, or at its position if not a player.
  * Sneaking while casting conjures lightning in a large, cone-shaped area in front of the caster, in addition to the behavior above.
* [FEATURE] Added Dimensional Rift spell, which allows interdimensional travel between vanilla and Golden Arcane dimensions.
* [FEATURE] Added Rift Threader, a tool for managing a Dimensional Rift's destination. It can also be used for linking two Rifts to each other, though that is yet a buggy and experimental feature.
* [FEATURE] Added two new structures with a naturally-spawned Dimensional Rift at its center, in two variants: Heavens (linked to the Overworld dimension) and Overworld (linked to the Heavens dimension).
* [TECHNICAL] Added new system for registering and calling/"casting" spells.

## Version 0.2.1 / 2024-09-14

### Codename: `Hotfix: Spell-casting`

* [BUGFIX] Fixed spell-casting system repeating the user's last used spell indefinitely.
* [BUGFIX] Fixed spells not triggering their cooldown when cast.
* [ENHANCEMENT] Increased cast duration of spells from `0.1` to `1` second to avoid accidental double-casting.
* [ENHANCEMENT] Changed particle effects for all variants of the Weather spell.

## Version 0.2.0-b / 2024-09-14

### Codename: `Rebirth`

* [FEATURE] Removed Golden Arrow's abilities (Dash, Teleport, Heal, Lamina Tenebris).
* [FEATURE] Removed Golden Arrow's death event.
* [FEATURE] Added Weather spell, with three variants: Clear, Rain, Thunder; Each of these turn the weather to their respective type when cast.
* [FEATURE] Added Smelt charm, which processes items in the offhand as if smelt by a furnace.
* [FEATURE] Added a custom difficulty meter for Golden Arcane, with an extra difficulty level above Hard: Dark Mode.

## Version 0.2.0-a / 2024-09-02

### Codename: `Tenebrous Update`

* [META] Added a changelog file for tracking changes to the datapack.
* [FEATURE] Added advancement for defeating Golden Arrow while it is vulnerable.
* [FEATURE] Added special ability for Golden Arrow: Lamina Tenebris, which renders Golden Arrow temporarily invulnerable while "slashes" occur at the player's position.
  * Golden Arrow is vulnerable while preparing this attack, removing all attributes and effects from itself. If defeated in this state, the new advancement is granted.
* [FEATURE] Added new event for toggling vulnerability.
* [FEATURE] Added function for removing Golden Arrow's held weapon(s).
* [ENHANCEMENT] Changed Golden Arrow's summon function to despawn existing instances of Golden Arrow before summoning a new one.
* [ENHANCEMENT] Changed despawning event to not display its usual message if it is triggered by summoning another Golden Arrow.
* [ENHANCEMENT] Changed Golden Arrow's offhand sword to always have Curse of Vanishing replace its last enchantment, which is restored when in the mainhand.
* [ENHANCEMENT] Changed Golden Arrow's melee mode to have a low chance of using the offhand sword, *Demise*, as the mainhand sword instead of the usual *Banishment*.
  * These two changes now make *Demise* a rare, yet obtainable loot from Golden Arrow.

## Version 0.1.0 / 2024-09-01

### Codename: `Creation`

* [FEATURE] Added Golden Arrow mini-boss.
* [FEATURE] Added advancement for defeating Golden Arrow.
* [FEATURE] Added Dash ability for Golden Arrow, which grants a short burst of speed and invisibility.
* [FEATURE] Added Teleport ability for Golden Arrow, which teleports itself behind the player, in two variants: Ambush (four blocks of distance) and Deflect (eight blocks of distance).
* [FEATURE] Added Heal ability for Golden Arrow, which restores a substantial amount of health at once.
  * All three abilities are run within a constantly-resetting clock, with differing chances, in order: Dash, Teleport, Heal.
* [FEATURE] Added events for Golden Arrow's defeat and despawning, and for when no player is nearby (which triggers the despawning event).
* [FEATURE] Added functions for replacing an entity's equipment with Golden Arrow's and for summoning Golden Arrow itself.
* [FEATURE] Added predicates for random rolls: 10%, 25%, 33% and 50%.
