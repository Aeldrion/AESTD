# Written by Aeldrion, Minecraft 19w05a
# Returns the cosine of an integer (in degrees) multiplied by 1000
# Example: 0 returns 1000, 30 returns 866, 120 returns -500
# Input: aestd.math.in, output: aestd.math.out

# Summon the cloud and apply rotation
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd","aestd.cosine.cloud"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=aestd.cosine.cloud,limit=1] aestd.rot.x = @s aestd.math.in
execute as @e[type=minecraft:area_effect_cloud,tag=aestd.cosine.cloud,limit=1] run function aestd:entity/set_rotation

# Get x position before and after teleportation
execute as @e[type=minecraft:area_effect_cloud,tag=aestd.cosine.cloud,limit=1] run function aestd:entity/get_coordinates
scoreboard players operation #aestd aestd.coords.z = @e[type=minecraft:area_effect_cloud,tag=aestd.cosine.cloud,limit=1] aestd.coords.z
execute as @e[type=minecraft:area_effect_cloud,tag=aestd.cosine.cloud,limit=1] at @s run teleport @s ^ ^ ^1000
execute as @e[type=minecraft:area_effect_cloud,tag=aestd.cosine.cloud,limit=1] run function aestd:entity/get_coordinates

# Calculate delta
scoreboard players operation @s aestd.math.out = @e[type=minecraft:area_effect_cloud,tag=aestd.cosine.cloud,limit=1] aestd.coords.z
scoreboard players operation @s aestd.math.out -= #aestd aestd.coords.z
