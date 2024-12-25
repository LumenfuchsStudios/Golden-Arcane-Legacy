package lumenfuchsstudios.golden_arcane.effects;

import lumenfuchsstudios.golden_arcane.GoldenArcane;
import net.minecraft.entity.LivingEntity;
import net.minecraft.entity.effect.StatusEffect;
import net.minecraft.entity.effect.StatusEffectCategory;
import net.minecraft.registry.Registries;
import net.minecraft.server.world.ServerWorld;

public class PurityEffect extends StatusEffect {
    public PurityEffect() {
        super(StatusEffectCategory.NEUTRAL, 0xefafff);
    }

    @Override
    public void onApplied(LivingEntity entity, int amplifier) {
        entity.addCommandTag("goldark.effects.purity");
    }

    @Override
    public boolean canApplyUpdateEffect(int duration, int amplifier) {
        return true;
    }

    @Override
    public boolean applyUpdateEffect(ServerWorld world, LivingEntity entity, int amplifier) {
        entity.getStatusEffects().forEach(effect -> {
            if (effect.getEffectType() != Registries.STATUS_EFFECT.getEntry(GoldenArcane.PURITY_EFFECT)) {
                entity.removeStatusEffect(effect.getEffectType());
            }
        });

        return super.applyUpdateEffect(world, entity, amplifier);
    }
}