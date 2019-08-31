# Author: Amberw / Aeldrion
# Version: 1.14.4
# Project: AESTD

# Stores the biome's numerical ID into a score
# Input: context position, output: aestd.biome

# Call loot table and insert into chest
replaceitem block 1519204 2 0 container.0 minecraft:air
execute store result score #aestd aestd.biome run loot insert 1519204 2 0 loot aestd.internal:biome

# Copy ID to sender, if there is one
execute if entity @s run scoreboard players operation @s aestd.biome = #aestd aestd.biome

# The score corresponds to the biome's numerical ID.
# Biome IDs can be found here: https://hastebin.com/fehafakulu.txt
