# Golden Arcane's Changelog

> [!NOTE]
> Page in Progress! Please be patient.

## 0.3.0 / 2024-11-24

### Codename: `Rewrite`

* ...

## 0.2.1 / 2024-09-14

### Codename: `Hotfix: Spell-casting`

* [BUGFIX] Fixed spell-casting system repeating the user's last used spell indefinitely.
* [BUGFIX] Fixed spells not triggering their cooldown when cast.
* [ENHANCEMENT] Increased cast duration of spells from `0.1` to `1` second to avoid accidental double-casting.
* [ENHANCEMENT] Changed particle effects for all variants of the Weather spell.

## 0.2.0-b / 2024-09-14

### Codename: `Rebirth`

* [FEATURE] Removed Golden Arrow's abilities (Dash, Teleport, Heal, Lamina Tenebris).
* [FEATURE] Removed Golden Arrow's death event.
* [FEATURE] Added Weather spell, with three variants: Clear, Rain, Thunder; Each of these turn the weather to their respective type when cast.
* [FEATURE] Added Smelt charm, which processes items in the offhand as if smelt by a furnace.
* [FEATURE] Added a custom difficulty meter for Golden Arcane, with an extra difficulty level above Hard: Dark Mode.

## 0.2.0-a / 2024-09-02

### Codename: `Tenebrous Update`

* [FEATURE] Added a changelog file for tracking changes to the datapack.
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

## 0.1.0 / 2024-09-01

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
