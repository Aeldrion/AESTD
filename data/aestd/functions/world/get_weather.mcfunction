# Written by Aeldrion, Minecraft 19w05a
# Returns the current weather
# Output: aestd.weather

# Call loot table and insert into chest
execute in minecraft:overworld run replaceitem block 1519204 2 0 container.0 minecraft:air
execute in minecraft:overworld store result score #aestd aestd.weather run loot insert 1519204 2 0 loot aestd.internal:weather
# Copy score to sender, if there is one
execute if entity @s run scoreboard players operation @s aestd.weather = #aestd aestd.weather

# Documentation
# 0: clear
# 1: raining
# 2: thundering
