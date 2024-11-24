## # AydenTFoxx @ September 22nd, 2024

# * Fails to set a new Dimension due to already being over the Rift's limit.
# * Note it still allows invalid Dimension ranges (-1 and 5), thus still being possible to cause an unstable Rift.

# ? Run by: Armor Stand [tag: goldark.dimensional_rift, scores={ goldark.dummy: ..-1 / 5.. }]


playsound block.fire.extinguish block @a[distance=..16] ~ ~ ~ 1 0.5

particle smoke ~ ~0.5 ~ 0.1 0.1 0.1 0.1 10

title @p actionbar { "translate": "goldark.spells.fail.dimension_overflow", "color": "red" }

return fail