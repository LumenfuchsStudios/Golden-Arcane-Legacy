## * Checks around the caller for any pure Iron-type block.
## * 
## * Last modified: December 2nd, 2024 (AydenTFoxx)


execute unless block ~ ~-0.1 ~ #goldark:iron/pure \
        unless block ~ ~ ~0.34 #goldark:iron/pure \
        unless block ~ ~ ~-0.34 #goldark:iron/pure \
        unless block ~-0.34 ~ ~ #goldark:iron/pure \
        unless block ~0.34 ~ ~ #goldark:iron/pure \
        unless block ~ ~1 ~0.34 #goldark:iron/pure \
        unless block ~ ~1 ~-0.34 #goldark:iron/pure \
        unless block ~-0.34 ~1 ~ #goldark:iron/pure \
        unless block ~0.34 ~1 ~ #goldark:iron/pure \
        unless block ~ ~ ~ #goldark:iron/pure \
        run return 0

return 1