# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Stores the dimension into a score
# Input: context dimension, output: aestd.dimension

scoreboard players reset @s aestd.dimension

summon minecraft:area_effect_cloud 1519204 1 0 {Tags:["aestd.context.dimension_cloud","aestd"]}
execute in minecraft:the_end positioned 1519204 1 0 if entity @e[type=minecraft:area_effect_cloud,tag=aestd.context.dimension_cloud,distance=..1,limit=1] run scoreboard players set #aestd aestd.dimension 1
execute in minecraft:overworld positioned 1519204 1 0 if entity @e[type=minecraft:area_effect_cloud,tag=aestd.context.dimension_cloud,distance=..1,limit=1] run scoreboard players set #aestd aestd.dimension 0
execute in minecraft:the_nether positioned 1519204 1 0 if entity @e[type=minecraft:area_effect_cloud,tag=aestd.context.dimension_cloud,distance=..1,limit=1] run scoreboard players set #aestd aestd.dimension -1
kill @e[type=minecraft:area_effect_cloud,tag=aestd.context.dimension_cloud,limit=1]

scoreboard players operation @s aestd.dimension = #aestd aestd.dimension

# -1: The Nether
# 0: Overworld
# 1: The End
