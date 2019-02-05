# Written by Aeldrion, Minecraft 19w05a
# Saves the context position to the sender's position scores if the position is loaded
# Input: context, output: aestd.coords.x|aestd.coords.y|aestd.coords.z

# Spawn a marker
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd","aestd.context.position_cloud"]}

# Save its coordinates to #aestd
execute store result score #aestd aestd.coords.x run data get entity @e[type=minecraft:area_effect_cloud,tag=aestd.context.position_cloud,limit=1] Pos[0]
execute store result score #aestd aestd.coords.y run data get entity @e[type=minecraft:area_effect_cloud,tag=aestd.context.position_cloud,limit=1] Pos[1]
execute store result score #aestd aestd.coords.z run data get entity @e[type=minecraft:area_effect_cloud,tag=aestd.context.position_cloud,limit=1] Pos[2]

# Copy these coordinates to sender, if there is one
execute if entity @s run scoreboard players operation @s aestd.coords.x = #aestd aestd.coords.x
execute if entity @s run scoreboard players operation @s aestd.coords.y = #aestd aestd.coords.y
execute if entity @s run scoreboard players operation @s aestd.coords.z = #aestd aestd.coords.z

# Kill marker
kill @e[type=minecraft:area_effect_cloud,tag=aestd.context.position_cloud,limit=1]
