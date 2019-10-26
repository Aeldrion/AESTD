# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

# Call loot table and insert into shulker box
replaceitem block -30000000 0 7777 container.0 minecraft:air
execute store result score #aestd aestd.structure run loot insert -30000000 0 7777 loot aestd.private:structure

# Copy ID to sender, if there is one
execute if entity @s run scoreboard players operation @s aestd.structure = #aestd aestd.structure
