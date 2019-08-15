# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Returns the current weather
# Output: aestd.weather

# Call loot table and insert into chest
replaceitem block 1519204 2 0 container.0 minecraft:air
execute store result score #aestd aestd.weather run loot insert 1519204 2 0 loot aestd.internal:weather
# Copy score to sender, if there is one
execute if entity @s run scoreboard players operation @s aestd.weather = #aestd aestd.weather

# 0: clear
# 1: raining
# 2: thundering
