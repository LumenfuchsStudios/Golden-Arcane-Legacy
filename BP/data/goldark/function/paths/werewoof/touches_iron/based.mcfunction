## * Checks around the caller for any Iron-based block.
## * 
## * Last modified: December 9th, 2024 (AydenTFoxx)


execute unless block ~ ~-0.1 ~ #goldark:iron/based \
        unless block ~ ~ ~0.34 #goldark:iron/based \
        unless block ~ ~ ~-0.34 #goldark:iron/based \
        unless block ~-0.34 ~ ~ #goldark:iron/based \
        unless block ~0.34 ~ ~ #goldark:iron/based \
        unless block ~ ~1 ~0.34 #goldark:iron/based \
        unless block ~ ~1 ~-0.34 #goldark:iron/based \
        unless block ~-0.34 ~1 ~ #goldark:iron/based \
        unless block ~0.34 ~1 ~ #goldark:iron/based \
        unless block ~ ~ ~ #goldark:iron/based \
        run return 0

return 1