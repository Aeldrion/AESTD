# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Generates a random integer from min (included) to max (excluded)
# Input: aestd.random.min|aestd.random.max, output: aestd.random

scoreboard players operation @s aestd.random.max -= aestd.random.min
function aestd:math/random_lcg
scoreboard players operation @s aestd.random += aestd.random.min
scoreboard players operation @s aestd.random.max += aestd.random.min
