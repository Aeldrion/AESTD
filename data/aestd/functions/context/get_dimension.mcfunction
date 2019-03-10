# Written by Aeldrion, Minecraft 19w05a
# Stores the dimension into a score
# Input: context dimension, output: aestd.dimension

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd.context.dimension_cloud","aestd"]}
execute in minecraft:the_end if entity @e[type=minecraft:area_effect_cloud,tag=aestd.context.dimension_cloud,distance=..1,limit=1] run scoreboard players set #aestd aestd.dimension 1
execute in minecraft:overworld if entity @e[type=minecraft:area_effect_cloud,tag=aestd.context.dimension_cloud,distance=..1,limit=1] run scoreboard players set #aestd aestd.dimension 0
execute in minecraft:the_nether if entity @e[type=minecraft:area_effect_cloud,tag=aestd.context.dimension_cloud,distance=..1,limit=1] run scoreboard players set #aestd aestd.dimension -1
kill @e[type=minecraft:area_effect_cloud,tag=aestd.context.dimension_cloud,limit=1]

scoreboard players operation @s aestd.dimension = #aestd aestd.dimension

# -1: The Nether
# 0: Overworld
# 1: The End
