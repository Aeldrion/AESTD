# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

# Call loot table and insert into chest
replaceitem block -30000000 0 7776 container.0 minecraft:air
execute store result score #aestd aestd.weather run loot insert -30000000 0 7776 loot aestd.private:weather
# Copy score to executing entity, if there is one
execute if entity @s run scoreboard players operation @s aestd.weather = #aestd aestd.weather
