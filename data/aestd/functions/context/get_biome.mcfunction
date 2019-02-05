# Loot table by Amber, written by Aeldrion, Minecraft 19w05a
# Stores the biome's numerical ID into a score
# Input: context position, output: aestd.biome

# Call loot table and insert into chest
execute store result score #aestd aestd.biome run loot insert 1519204 2 0 loot aestd.internal:biome
data remove block 1519204 2 0 Items

# Copy ID to sender, if there is one
execute if entity @s run scoreboard players operation @s aestd.biome = #aestd aestd.biome

# The score corresponds to the biome's numerical ID.
# Biome IDs can be found here: https://hastebin.com/fehafakulu.txt
