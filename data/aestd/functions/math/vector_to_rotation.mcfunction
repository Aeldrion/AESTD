# Written by Aeldrion, Minecraft 18w46a
# Converts the sender's direction vector into rotation scores
# Input: aestd.dir.x|aestd.dir.y|aestd.dir.z, output: aestd.rot.x|aestd.rot.y

# Summon clouds
execute at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^ {Tags:["aestd","aestd.entity.rotation.vector_cloud","aestd.entity.rotation.vector_cloud_1"]}
execute at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^ {Tags:["aestd","aestd.entity.rotation.vector_cloud","aestd.entity.rotation.vector_cloud_2"]}
# Offset second cloud
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=aestd.entity.rotation.vector_cloud_2,limit=1] aestd.delta.x = @s aestd.dir.x
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=aestd.entity.rotation.vector_cloud_2,limit=1] aestd.delta.y = @s aestd.dir.y
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=aestd.entity.rotation.vector_cloud_2,limit=1] aestd.delta.z = @s aestd.dir.z
execute as @e[type=minecraft:area_effect_cloud,tag=aestd.entity.rotation.vector_cloud_2,limit=1] run function aestd:entity/offset_position
# Make first cloud look at second cloud
execute at @s run teleport @e[type=minecraft:area_effect_cloud,tag=aestd.entity.rotation.vector_cloud_1,limit=1] ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=aestd.entity.rotation.vector_cloud_2,limit=1] feet
# Get first cloud's rotation
execute as @e[type=minecraft:area_effect_cloud,tag=aestd.entity.rotation.vector_cloud_1,limit=1] run function aestd:entity/get_rotation
scoreboard players operation @s aestd.rot.x = @e[type=minecraft:area_effect_cloud,tag=aestd.entity.rotation.vector_cloud_1,limit=1] aestd.rot.x
scoreboard players operation @s aestd.rot.y = @e[type=minecraft:area_effect_cloud,tag=aestd.entity.rotation.vector_cloud_1,limit=1] aestd.rot.y
# Kill clouds
kill @e[type=minecraft:area_effect_cloud,tag=aestd.entity.rotation.vector_cloud,limit=2]
