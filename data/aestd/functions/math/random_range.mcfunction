# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Generates a random integer from min (included) to max (excluded)
# Input: aestd.random.min|aestd.random.max, output: aestd.random

# Remove minimum
scoreboard players operation #aestd aestd.math.var = @s aestd.random.max
scoreboard players operation #aestd aestd.math.var -= @s aestd.random.min

# Calculate random int between 0 and max-min
execute at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd","aestd.random.cloud"]}
execute unless entity @e[type=minecraft:area_effect_cloud,tag=aestd.random.cloud,limit=1] run summon minecraft:area_effect_cloud -30000000 0 7776 {Tags:["aestd","aestd.random.cloud"]}
execute store result score @s aestd.random run data get entity @e[type=minecraft:area_effect_cloud,tag=aestd.random.cloud,limit=1] UUIDMost 0.0000000001
kill @e[type=minecraft:area_effect_cloud,tag=aestd.random.cloud,limit=1]
scoreboard players operation @s aestd.random %= #aestd aestd.math.var

# Readd minimum
scoreboard players operation @s aestd.random += @s aestd.random.min
