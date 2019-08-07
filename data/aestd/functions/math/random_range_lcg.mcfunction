# Written by Aeldrion, Minecraft 1.14.2
# Generates a random integer from aestd.random.min (included) to aestd.random.max (excluded)
# Input: aestd.random.min|aestd.random.max, output: aestd.random

scoreboard players operation @s aestd.random.max -= aestd.random.min
function aestd:math/random_lcg
scoreboard players operation @s aestd.random += aestd.random.min
scoreboard players operation @s aestd.random.max += aestd.random.min
