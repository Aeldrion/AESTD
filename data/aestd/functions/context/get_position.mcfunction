# Written by Aeldrion, Minecraft 1.14
# Saves the context position to the sender's position scores if the position is loaded
# If the sender has the aestd.coords.scale_up tag, the results will be scaled up by 50
# Input: context, output: aestd.coords.x|aestd.coords.y|aestd.coords.z

# Spawn a marker
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd","aestd.context.position_cloud"]}

# Save its coordinates to #aestd
execute unless entity @s[tag=aestd.coords.scale_up] store result score #aestd aestd.coords.x run data get entity @e[type=minecraft:area_effect_cloud,tag=aestd.context.position_cloud,limit=1] Pos[0]
execute unless entity @s[tag=aestd.coords.scale_up] store result score #aestd aestd.coords.y run data get entity @e[type=minecraft:area_effect_cloud,tag=aestd.context.position_cloud,limit=1] Pos[1]
execute unless entity @s[tag=aestd.coords.scale_up] store result score #aestd aestd.coords.z run data get entity @e[type=minecraft:area_effect_cloud,tag=aestd.context.position_cloud,limit=1] Pos[2]
execute if entity @s[tag=aestd.coords.scale_up] store result score #aestd aestd.coords.x run data get entity @e[type=minecraft:area_effect_cloud,tag=aestd.context.position_cloud,limit=1] Pos[0] 50
execute if entity @s[tag=aestd.coords.scale_up] store result score #aestd aestd.coords.y run data get entity @e[type=minecraft:area_effect_cloud,tag=aestd.context.position_cloud,limit=1] Pos[1] 50
execute if entity @s[tag=aestd.coords.scale_up] store result score #aestd aestd.coords.z run data get entity @e[type=minecraft:area_effect_cloud,tag=aestd.context.position_cloud,limit=1] Pos[2] 50

# Copy these coordinates to sender, if there is one
scoreboard players operation @s aestd.coords.x = #aestd aestd.coords.x
scoreboard players operation @s aestd.coords.y = #aestd aestd.coords.y
scoreboard players operation @s aestd.coords.z = #aestd aestd.coords.z

# Kill marker
kill @e[type=minecraft:area_effect_cloud,tag=aestd.context.position_cloud,limit=1]
