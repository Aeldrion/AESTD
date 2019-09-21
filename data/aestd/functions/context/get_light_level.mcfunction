# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Stores the light level at context position into a score
# Output: aestd.biome

# Call loot table and insert into chest
replaceitem block -30000000 0 7777 container.0 minecraft:air
execute store result score #aestd aestd.light run loot insert -30000000 0 7777 loot aestd.private:light_level

# Copy ID to sender, if there is one
execute if entity @s run scoreboard players operation @s aestd.light = #aestd aestd.light

# The score corresponds to the biome's numerical ID.
# Biome IDs can be found here: https://hastebin.com/fehafakulu.txt
