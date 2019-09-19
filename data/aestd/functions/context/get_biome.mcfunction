# Author: Amberw / Aeldrion
# Version: 19w38a
# Project: AESTD

# Stores the biome's numerical ID into a score
# Output: aestd.biome

# Call loot table and insert into chest
replaceitem block -30000000 0 7777 container.0 minecraft:air
execute store result score #aestd aestd.biome run loot insert -30000000 0 7777 loot aestd.internal:biome

# Copy ID to sender, if there is one
execute if entity @s run scoreboard players operation @s aestd.biome = #aestd aestd.biome

# The score corresponds to the biome's numerical ID.
# Biome IDs can be found here: https://hastebin.com/fehafakulu.txt
