# Written by Aeldrion, Minecraft 19w05a
# Saves the context rotation to the sender's rotation scores
# Input: context, output: aestd.rot.x|aestd.raw.y

# Spawn a marker
execute positioned as @p run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd","aestd.context.rotation_cloud"]}
execute positioned as @p run teleport @e[type=minecraft:area_effect_cloud,tag=aestd.context.rotation_cloud,limit=1] ~ ~ ~ ~ ~

# Save its rotation to #aestd
execute store result score #aestd aestd.rot.x run data get entity @e[type=minecraft:area_effect_cloud,tag=aestd.context.rotation_cloud,limit=1] Rotation[0]
execute store result score #aestd aestd.rot.y run data get entity @e[type=minecraft:area_effect_cloud,tag=aestd.context.rotation_cloud,limit=1] Rotation[1]

# Copy these rotation values to sender, if there is one
execute if entity @s run scoreboard players operation @s aestd.rot.x = #aestd aestd.rot.x
execute if entity @s run scoreboard players operation @s aestd.rot.y = #aestd aestd.rot.y

# Kill marker
kill @e[type=minecraft:area_effect_cloud,tag=aestd.context.rotation_cloud,limit=1]
