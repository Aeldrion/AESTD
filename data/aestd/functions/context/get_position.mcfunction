# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Saves the context position to the sender's position scores if the position is loaded
# Input: context, output: aestd.coords.x|aestd.coords.y|aestd.coords.z

# Spawn a marker
summon minecraft:area_effect_cloud 1519204 1 0 {Tags:["aestd","aestd.context.position_cloud"]}
execute as @e[type=minecraft:area_effect_cloud,tag=aestd.context.position_cloud,limit=1] run function aestd.internal:get_context_position_as_cloud

# Copy these coordinates to sender, if there is one
scoreboard players operation @s aestd.coords.x = #aestd aestd.coords.x
scoreboard players operation @s aestd.coords.y = #aestd aestd.coords.y
scoreboard players operation @s aestd.coords.z = #aestd aestd.coords.z
