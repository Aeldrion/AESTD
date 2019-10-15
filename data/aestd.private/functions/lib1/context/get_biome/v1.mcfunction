# Author: Amberw / Aeldrion
# Version: 19w41a
# Project: AESTD

# Call loot table and insert into chest
replaceitem block -30000000 0 7777 container.0 minecraft:air
execute store result score #aestd aestd.biome run loot insert -30000000 0 7777 loot aestd.private:biome

# Copy ID to sender, if there is one
execute if entity @s run scoreboard players operation @s aestd.biome = #aestd aestd.biome
