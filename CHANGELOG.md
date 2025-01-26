# Golden Arcane's Changelog

> [!NOTE]
> Page in Progress! Please be patient.

Legend:

> ✳️ Meta  
> 🐛 Bugfix  
> ⭐ Feature  
> 🔺 Enhancement  
> 🔧 Technical

## Version x.y.z / Unreleased

### Codename: ``

* 🔧 Reorganized datapack into multiple namespaces; `goldark` is now used almost exclusively for shared behavior and datapack management;

## Version 0.5.0 / 2025-01-22

### Codename: `Awakening`

* ⭐ Added Vempyre path, an Arcane Path with a focus on active abilities for fighting foes far stronger than oneself.
* ⭐ Added Heal ability to Vempyre, which heals 2 hearts and grants temporary Regeneration.
* ⭐ Added Lunge ability to Vempyre, which bestows enhanced speed and jumping strength for a brief moment.
* ⭐ Added Shroud ability to Vempyre, which cloaks the user in shadows and makes the next attack much stronger.
* ⭐ Added sunlight weakness to Vempyre; Will burn in sunlight if exposed for more than a few seconds.
  * Also triggers Holy Sickness up to level III, which causes endless fire at the Vempyre's position.
* ⭐ Added Vempyre perk and helper functions for inflicting Vempyrism.
* 🔺 Tweaked several of Holy Sickness' feedback features.
* 🔺 Added (equipped) iron armor, Iron Golem and minecarts to Werewoof's sickness check.
  * As with blocks, all of these trigger immediate burning damage and increase Holy Sickness' meter.
* 🔺 Changed Werewoof's Wolf form climbing check to only move the Wolf upwards if the above block would not suffocate it.
* 🔧 Added entity tags for living and undead humanoids.
* 🔧 Added item tags for raw meat and "blood"-related items

## Version 0.4.2 / 2024-12-11

### Codename: `Hotfix: Lycanthrope-ish`

* 🐛 Fixed Werewoof user's active effects not being given to Wolf form at transformation.
* ⭐ Werewooves now take extra damage and a few seconds of Poison to any iron-related item used as weapon.
* ⭐ Added Perks, toggleable features easily granted or taken by calling the same function a second time.
  * Werewoof's attributes have been moved to the new Werewoof perk.
  * Added jump strength to list of enhanced attributes, Werewooves can now jump roughly two blocks high.
* 🔺 Changed Werewoof's health requirement for transformation from 1.5 heart to 2 hearts.
* 🔧 Added helper functions for de-transforming a Werewoof.
* 🔧 Added Llama Spit to "projectiles" entity tag.
* 🔧 Removed helper functions for managing Werewoof entities in a radius, now all functions are strictly self-inflicted.
* 🔧 Changed Iron and Gold ores to be derived-type rather than pure-type in their respective block and item tags.

## Version 0.4.1 / 2024-12-11

### Codename: `Lycan Heart`

* 🐛 Fixed Werewoof's Wolf form's aggro cooldown triggering on the player.
* 🐛 Fixed Werewoof's Wolf form not respecting the user's rotation on transformation.
* ⭐ Added advancements for the Werewoof path.
* ⭐ Added passive attributes for the Werewoof path, which are disabled while Holy Sickness is active.
* ⭐ Added Holy Numbness effect, which alleviates Holy Sickness to a certain extent.
* ⭐ Added Lycanthropy ritual, which converts the nearest entity into a Werewoof.
* ⭐ Added Lycanthropy Reversal ritual, which cures the nearest Werewoof.
* 🔺 Added cooldown for Werewoof's transformation ability.
* 🔺 Added requirement of 1.5 heart (3 HP) for Werewoof's transformation.
* 🔺 Added auto-transforming feature for non-player Werewooves during Full Moons.
* 🔺 Changed Holy Sickness I to now inflict Bad Luck while active.
* 🔺 Changed Werewoof's sickness check to no longer apply Holy Sickness on Creative game mode.
* 🔺 Changed Werewoof's sickness check to also detect blocks one block above the entity.
* 🔧 Added new block tags for magic catalysts and skulls.
* 🔧 Added new block tags for gold-related items.
* 🔧 Added new item tag for magic catalysts.
* 🔧 Changed gold-related item tags to better match iron's.
* 🔧 Changed "magic immune" entity tag to include projectiles.
* 🔧 Changed "tameable" entity tag to include Donkeys and Mules.
* 🔧 Changed Golden Arcane's tick rate system:
  * Added "tick always" function tag for functions run on every tick;
  * Added "tick rated" function tag for functions which retain the old behavior of being rated by the Golden Arcane tick rate.

## Version 0.4.0 / 2024-12-08

### Codename: `Divinity`

* ✳️ Added Golden Arcane resource pack; Moved previous file to a new folder accordingly.
* 🐛 Removed broken initial text at Holy Sickness I.
* ⭐ Added Judgement spell, which casts a slow-moving projectile that breaks into a Holy Sickness-inflicting AoE on impact.
* ⭐ Added Thunder Egg spell, which conjures a lightning where the egg breaks.
* ⭐ Added rare Thunderous Egg spell, a variant of the Thunder Egg which summons a dangerous Storm Cloud that conjures lightning and hurls nearby creatures into the air.
  * Both eggs' recipes are received when first obtaining the respective egg in the wild.
* ⭐ Added new reward for Holy Sickness' Purity, granting 12 items of the new Judgement spell and its respective recipe.
* ⭐ Added hidden advancements for obtaining the Thunder and Thunderous Eggs.
* ⭐ Added hidden advancement for surviving Holy Sickness to its very end.
* ⭐ Added new mechanic for turning eggs collected from a chicken into Thunder and Thunderous Eggs.
* 🔺 Changed Holy Sickness' audio feedback to be less deafening and/or more unique amongst each other.
* 🔺 Changed Holy Sickness' visual feedback to better accommodate recent updates.
* 🔺 Changed Holy Sickness III's Poison duration from `30` to `12` seconds.
* 🔺 Changed Holy Sickness V's final explosion to summon a TNT if the player is not on ground.
  * Also removed summoned snowball as it had no effect in the fireball's behavior as previously intended.
* 🔺 Changed Holy Sickness' Purity to remove more negative status effect.
* 🔧 Changed Golden Arcane's scoreboard objectives to have proper display names.
* 🔧 Changed the Effects module to run on every game tick, instead of being rated by the datapack's own tick rate as per usual.
* 🔧 Added a new debug tool: the Remover Stick, which one-taps any creature capable of taking damage from the player.
* 🔧 Added helper functions for giving all newly added items.

## Version 0.3.1 / 2024-12-05

### Codename: `Hotfix: Tactical Werewoof`

* ⭐ Added Werewoof's sickness check for iron-related blocks, with pure-type blocks dealing direct burn damage in addition to increasing Holy Sickness.
* ⭐ Werewoof's Wolf form now inherits all status effects and current health of its user at transformation.
* ⭐ Werewoof's Wolf form now also receives the Holy Sickness effect on physical contact with iron.
* ⭐ Added health bar for Werewooves' Wolf form while transformed.
* 🔺 De-transforming now grants a Werewoof a few seconds of Regeneration and Hunger.
* 🐛 Fixed bug of flying rotating Werewooves.
* 🐛 Fixed bug of rocket Werewooves.
* 🐛 Fixed bug of Wolf form pushing its user around when the transformed mob is not a player.
* 🔧 Removed helper function for toggling the Werewoof path, as more specific and flexible functions with the same purpose were also added in the same update.
* 🔧 Added team for transformed entities, with disabled collision detection to avoid interaction with other mobs.
* 🔧 Added predicate for whether an entity is on ground.
* 🔧 Added block tags for iron-related blocks mirroring their item-type counterparts.
* 🔧 Replaced item tags for Low, Medium, and Other iron-related items with the generic "Based", for items whose recipe include iron and a non-iron ingredient.

## Version 0.3.0-b / 2024-12-02

### Codename: `Rewrite`

* ✳️ Removed changelog files and docs folder from the datapack.
* ⭐ Removed Golden Arrow.
* ⭐ Removed spells and charms.
* ⭐ Removed custom dimensions.
  * All removed features are planned to be re-added in the future, but as of yet have no planned date for reintroduction.
* ⭐ Added Arcane Path: Werewoof, a "class" of sorts which allows the user to transform into a Wolf at will.
* ⭐ Added Holy Sickness effect, inflicted when a Werewoof is holding an iron-related item.
* 🔧 Added helper functions for converting, curing and transforming the user, a nearby mob, or all mobs within a radius into the new Werewoof path.
* 🔧 Added helper function for enabling/disabling the Werewoof path on the user.
* 🔧 Added helper functions for setting, saving and restoring a player's gamemode.
* 🔧 Added predicates for detecting mob hostility (always true for `#undead` type mobs) and to check whether if an entity is a mob (i.e. not an inanimate/"technical" entity).
* 🔧 Added block tags for dye-producing flowers.
* 🔧 Added entity type tags for inanimate objects and non-mob entities, with the "magic immune" generic tag grouping all non-mob tags plus boss mobs (as of this version, the Ender Dragon and the Wither).
* 🔧 Added entity type tags for friendly humanoids ("player allies") as a counter-equivalent to vanilla's "illager allies".
* 🔧 Added item tags for iron-related items, in the following variants:
  * Heavy (9+), Medium (8-3), Low (2-1): based on how much iron an item has in its recipe;
  * Pure (only iron in its recipe), Other (Low and Medium tags), Any (all other tags).
* 🔧 Added item tags for gold-related items in the same model as above.

## Version 0.3.0-a / 2024-11-24

### Codename: `Expansion`

* ⭐ Added new in-progress dimension: the Abyss, a desolate wasteland where darkness reigns and foul ethereal creatures thrive.
* ⭐ Added new in-progress dimension: Heavens, an infinitely flat realm with blooming flora and melodic ambience.
* ⭐ Added new charm spell: Abyss Warp, which teleports its caster to the new Abyss dimension.
  * Mostly for debug purposes, as a new method is planned in future updates.
  * Sneaking while casting teleports the nearest non-player entity in front of the caster instead.
* ⭐ Added new charm spell: Evoker Fangs, which summons a line of Evoker Fangs in front of the caster.
  * Sneaking while casting summons Evoker Fangs in a circle pattern of sorts around the caster instead.
* ⭐ Added new charm spell: Lightning Bolt, which conjures a lightning in front of the caster, or at its position if not a player.
  * Sneaking while casting conjures lightning in a large, cone-shaped area in front of the caster, in addition to the behavior above.
* ⭐ Added Dimensional Rift spell, which allows inter-dimensional travel between vanilla and Golden Arcane dimensions.
* ⭐ Added Rift Threader, a tool for managing a Dimensional Rift's destination. It can also be used for linking two Rifts to each other, though that is yet a buggy and experimental feature.
* ⭐ Added two new structures with a naturally-spawned Dimensional Rift at its center, in two variants: Heavens (linked to the Overworld dimension) and Overworld (linked to the Heavens dimension).
* 🔧 Added new system for registering and calling/"casting" spells.

## Version 0.2.1 / 2024-09-14

### Codename: `Hotfix: Spell-casting`

* 🐛 Fixed spell-casting system repeating the user's last used spell indefinitely.
* 🐛 Fixed spells not triggering their cooldown when cast.
* 🔺 Increased cast duration of spells from `0.1` to `1` second to avoid accidental double-casting.
* 🔺 Changed particle effects for all variants of the Weather spell.

## Version 0.2.0-b / 2024-09-14

### Codename: `Rebirth`

* ⭐ Removed Golden Arrow's abilities (Dash, Teleport, Heal, Lamina Tenebris).
* ⭐ Removed Golden Arrow's death event.
* ⭐ Added Weather spell, with three variants: Clear, Rain, Thunder; Each of these turn the weather to their respective type when cast.
* ⭐ Added Smelt charm, which processes items in the offhand as if smelt by a furnace.
* ⭐ Added a custom difficulty meter for Golden Arcane, with an extra difficulty level above Hard: Dark Mode.

## Version 0.2.0-a / 2024-09-02

### Codename: `Tenebrous Update`

* ✳️ Added a changelog file for tracking changes to the datapack.
* ⭐ Added advancement for defeating Golden Arrow while it is vulnerable.
* ⭐ Added special ability for Golden Arrow: Lamina Tenebris, which renders Golden Arrow temporarily invulnerable while "slashes" occur at the player's position.
  * Golden Arrow is vulnerable while preparing this attack, removing all attributes and effects from itself. If defeated in this state, the new advancement is granted.
* ⭐ Added new event for toggling vulnerability.
* ⭐ Added function for removing Golden Arrow's held weapon(s).
* 🔺 Changed Golden Arrow's summon function to despawn existing instances of Golden Arrow before summoning a new one.
* 🔺 Changed despawning event to not display its usual message if it is triggered by summoning another Golden Arrow.
* 🔺 Changed Golden Arrow's offhand sword to always have Curse of Vanishing replace its last enchantment, which is restored when in the mainhand.
* 🔺 Changed Golden Arrow's melee mode to have a low chance of using the offhand sword, *Demise*, as the mainhand sword instead of the usual *Banishment*.
  * These two changes now make *Demise* a rare, yet obtainable loot from Golden Arrow.

## Version 0.1.0 / 2024-09-01

### Codename: `Creation`

* ⭐ Added Golden Arrow mini-boss.
* ⭐ Added advancement for defeating Golden Arrow.
* ⭐ Added Dash ability for Golden Arrow, which grants a short burst of speed and invisibility.
* ⭐ Added Teleport ability for Golden Arrow, which teleports itself behind the player, in two variants: Ambush (four blocks of distance) and Deflect (eight blocks of distance).
* ⭐ Added Heal ability for Golden Arrow, which restores a substantial amount of health at once.
  * All three abilities are run within a constantly-resetting clock, with differing chances, in order: Dash, Teleport, Heal.
* ⭐ Added events for Golden Arrow's defeat and despawning, and for when no player is nearby (which triggers the despawning event).
* ⭐ Added functions for replacing an entity's equipment with Golden Arrow's and for summoning Golden Arrow itself.
* ⭐ Added predicates for random rolls: 10%, 25%, 33% and 50%.
