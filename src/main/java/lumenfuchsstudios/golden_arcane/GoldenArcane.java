package lumenfuchsstudios.golden_arcane;

import net.fabricmc.api.ModInitializer;
import net.minecraft.entity.effect.StatusEffect;
import net.minecraft.registry.Registries;
import net.minecraft.registry.Registry;
import net.minecraft.util.Identifier;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import lumenfuchsstudios.golden_arcane.effects.BloodlustEffect;
import lumenfuchsstudios.golden_arcane.effects.PurityEffect;
import lumenfuchsstudios.golden_arcane.items.ModItems;

public class GoldenArcane implements ModInitializer {
	public static final String MOD_ID = "goldark";

	// This logger is used to write text to the console and the log file.
	// It is considered best practice to use your mod id as the logger's name.
	// That way, it's clear which mod wrote info, warnings, and errors.
	public static final Logger LOGGER = LoggerFactory.getLogger(MOD_ID);

	/// / / / / / / ///

	public static final StatusEffect BLOODLUST_EFFECT;
	public static final StatusEffect PURITY_EFFECT;

	static {
		BLOODLUST_EFFECT = Registry.register(Registries.STATUS_EFFECT, Identifier.of(GoldenArcane.MOD_ID, "bloodlust"), new BloodlustEffect());
		PURITY_EFFECT = Registry.register(Registries.STATUS_EFFECT, Identifier.of(GoldenArcane.MOD_ID, "purity"), new PurityEffect());
	}

	/// / / / / / / ///

	@Override
	public void onInitialize() {
		// This code runs as soon as Minecraft is in a mod-load-ready state.
		// However, some things (like resources) may still be uninitialized.
		// Proceed with mild caution.

		// LOGGER.info("Hello Fabric world!");

		ModItems.initialize();
	}
}