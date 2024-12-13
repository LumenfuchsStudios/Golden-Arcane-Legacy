## * Checks around the caller for any Iron-related block.
## * 
## * Last modified: December 9th, 2024 (AydenTFoxx)


execute unless block ~ ~-0.1 ~ #goldark:iron/any \
        unless block ~ ~ ~0.34 #goldark:iron/any \
        unless block ~ ~ ~-0.34 #goldark:iron/any \
        unless block ~-0.34 ~ ~ #goldark:iron/any \
        unless block ~0.34 ~ ~ #goldark:iron/any \
        unless block ~ ~1 ~0.34 #goldark:iron/any \
        unless block ~ ~1 ~-0.34 #goldark:iron/any \
        unless block ~-0.34 ~1 ~ #goldark:iron/any \
        unless block ~0.34 ~1 ~ #goldark:iron/any \
        unless block ~ ~ ~ #goldark:iron/any \
        run return 0

return 1