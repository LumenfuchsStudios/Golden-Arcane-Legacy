package lumenfuchsstudios.golden_arcane.items;

import lumenfuchsstudios.golden_arcane.GoldenArcane;
import net.fabricmc.fabric.api.registry.FabricBrewingRecipeRegistryBuilder;
import net.minecraft.entity.effect.StatusEffectInstance;
import net.minecraft.entity.effect.StatusEffects;
import net.minecraft.item.Item;
import net.minecraft.item.Items;
import net.minecraft.potion.Potion;
import net.minecraft.potion.Potions;
import net.minecraft.registry.Registries;
import net.minecraft.registry.Registry;
import net.minecraft.util.Identifier;

public class ModItems {
	public static Item register(Item item, String id) {
		// Create the identifier for the item.
		Identifier itemID = Identifier.of(GoldenArcane.MOD_ID, id);

		// Register the item.
		Item registeredItem = Registry.register(Registries.ITEM, itemID, item);

		// Return the registered item!
		return registeredItem;
	}

	/// / / / / / / ///

	// Vial of Blood
	public static final Potion BLOOD_VIAL = Registry.register(
			Registries.POTION,
			Identifier.of(GoldenArcane.MOD_ID, "blood_vial"),
			new Potion(
					"blood",
					new StatusEffectInstance(
							Registries.STATUS_EFFECT.getEntry(GoldenArcane.BLOODLUST_EFFECT),
							400,
							0),
					new StatusEffectInstance(
							StatusEffects.UNLUCK,
							1,
							0,
							true,
							false)));

	public static final Potion STRONG_BLOOD_VIAL = Registry.register(
			Registries.POTION,
			Identifier.of(GoldenArcane.MOD_ID, "strong_blood_vial"),
			new Potion(
					"blood",
					new StatusEffectInstance(
							Registries.STATUS_EFFECT.getEntry(GoldenArcane.BLOODLUST_EFFECT),
							200,
							1),
					new StatusEffectInstance(
							StatusEffects.UNLUCK,
							1,
							1,
							true,
							false)));

	// Potion of Purity
	public static final Potion PURITY_POTION = Registry.register(
			Registries.POTION,
			Identifier.of(GoldenArcane.MOD_ID, "purity"),
			new Potion(
					"purity",
					new StatusEffectInstance(
							Registries.STATUS_EFFECT.getEntry(GoldenArcane.PURITY_EFFECT),
							800,
							0,
							true,
							true),
					new StatusEffectInstance(
							StatusEffects.LUCK,
							1,
							0,
							true,
							false)));

	public static final Potion LONG_PURITY_POTION = Registry.register(
			Registries.POTION,
			Identifier.of(GoldenArcane.MOD_ID, "long_purity"),
			new Potion(
					"purity",
					new StatusEffectInstance(
							Registries.STATUS_EFFECT.getEntry(GoldenArcane.PURITY_EFFECT),
							2400,
							0,
							true,
							true),
					new StatusEffectInstance(
							StatusEffects.LUCK,
							1,
							0,
							true,
							false)));

	public static final Potion STRONG_PURITY_POTION = Registry.register(
			Registries.POTION,
			Identifier.of(GoldenArcane.MOD_ID, "strong_purity"),
			new Potion(
					"purity",
					new StatusEffectInstance(
							Registries.STATUS_EFFECT.getEntry(GoldenArcane.PURITY_EFFECT),
							200,
							1,
							true,
							true),
					new StatusEffectInstance(
							StatusEffects.LUCK,
							1,
							0,
							true,
							false)));

	/// / / / / / / ///

	public static void initialize() {
		// Vial of Blood
		FabricBrewingRecipeRegistryBuilder.BUILD.register(builder -> {
			builder.registerPotionRecipe(
					// Input potion.
					Potions.THICK,
					// Ingredient
					Items.BEETROOT,
					// Output potion.
					Registries.POTION.getEntry(BLOOD_VIAL));
		});

		// Vial of Blood (Strong)
		FabricBrewingRecipeRegistryBuilder.BUILD.register(builder -> {
			builder.registerPotionRecipe(
					// Input potion.
					Registries.POTION.getEntry(BLOOD_VIAL),
					// Ingredient
					Items.GLOWSTONE_DUST,
					// Output potion.
					Registries.POTION.getEntry(STRONG_BLOOD_VIAL));
		});

		// Potion of Purity (Long)
		FabricBrewingRecipeRegistryBuilder.BUILD.register(builder -> {
			builder.registerPotionRecipe(
					// Input potion.
					Registries.POTION.getEntry(PURITY_POTION),
					// Ingredient
					Items.REDSTONE,
					// Output potion.
					Registries.POTION.getEntry(LONG_PURITY_POTION));
		});

		// Potion of Purity (Strong)
		FabricBrewingRecipeRegistryBuilder.BUILD.register(builder -> {
			builder.registerPotionRecipe(
					// Input potion.
					Registries.POTION.getEntry(PURITY_POTION),
					// Ingredient
					Items.GLOWSTONE_DUST,
					// Output potion.
					Registries.POTION.getEntry(STRONG_PURITY_POTION));
		});
	}
}