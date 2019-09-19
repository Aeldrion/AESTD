# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Returns the current weather
# Output: aestd.weather

# 0: clear
# 1: raining
# 2: thundering

# Call loot table and insert into chest
replaceitem block -30000000 0 7776 container.0 minecraft:air
execute store result score #aestd aestd.weather run loot insert -30000000 0 7776 loot aestd.internal:weather
# Copy score to executing entity, if there is one
execute if entity @s run scoreboard players operation @s aestd.weather = #aestd aestd.weather
