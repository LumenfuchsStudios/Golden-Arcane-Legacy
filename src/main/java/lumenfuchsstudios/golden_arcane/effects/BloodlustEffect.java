package lumenfuchsstudios.golden_arcane.effects;

import net.minecraft.entity.LivingEntity;
import net.minecraft.entity.effect.StatusEffect;
import net.minecraft.entity.effect.StatusEffectCategory;
import net.minecraft.entity.effect.StatusEffectInstance;
import net.minecraft.entity.effect.StatusEffects;
import net.minecraft.entity.player.PlayerEntity;
import net.minecraft.server.world.ServerWorld;

public class BloodlustEffect extends StatusEffect {
	public BloodlustEffect() {
		// category: StatusEffectCategory - describes if the effect is helpful (BENEFICIAL), harmful (HARMFUL) or useless (NEUTRAL)
		// color: int - Color is the color assigned to the effect (in RGB)
		super(StatusEffectCategory.HARMFUL, 0x5b0a0a);
	}

	// Called when the effect is first applied.
	@Override
	public void onApplied(LivingEntity entity, int amplifier) {
		// If entity is non-Vempyre, inflict harm instead of healing
		if (!entity.getCommandTags().contains("goldark.paths.vempyre")) {
			entity.clientDamage(entity.getDamageSources().drown());

			if (entity instanceof PlayerEntity) {
				entity.addStatusEffect(new StatusEffectInstance(StatusEffects.NAUSEA, 220));
				entity.addStatusEffect(new StatusEffectInstance(StatusEffects.POISON, 140));
			}
		} else {
			if (entity.getCommandTags().contains("goldark.effects.purity")) {
				// If entity is under the Purity effect, revert benefits from Bloodlust
				entity.addStatusEffect(new StatusEffectInstance(StatusEffects.HUNGER, 120));
			} else {
				// Otherwise, heal entity and apply Saturation
				entity.heal((amplifier + 1) * 2);
			
				entity.addStatusEffect(new StatusEffectInstance(StatusEffects.SATURATION, 5, amplifier));
			}
		}
	}

	// Called every tick to check if the effect can be applied or not
	@Override
	public boolean canApplyUpdateEffect(int duration, int amplifier) {
		// In our case, we just make it return true so that it applies the effect every tick
		return true;
	}

	// Called whenever the effect is applied.
	@Override
	public boolean applyUpdateEffect(ServerWorld world, LivingEntity entity, int amplifier) {
		if (entity instanceof PlayerEntity) {
			((PlayerEntity) entity).addExhaustion(0.1f * (amplifier + 1)); // Higher amplifier removes hunger faster
		}

		return super.applyUpdateEffect(world, entity, amplifier);
	}
}