# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Returns the cosine of an integer (in degrees) multiplied by 1000
# Example: 0 returns 1000, 30 returns 866, 120 returns -500
# Input: aestd.math.in, output: aestd.math.out

execute at @s run summon minecraft:area_effect_cloud -30000000 1 7777 {Tags:["aestd", "aestd.cos.cloud"]}
execute store result entity @e[type=minecraft:area_effect_cloud, tag=aestd.cos.cloud, limit=1] Rotation[0] float 1 run scoreboard players get @s aestd.math.in
execute as @e[type=minecraft:area_effect_cloud, tag=aestd.cos.cloud, limit=1] at @s run function aestd.internal:cos_teleport
scoreboard players operation @s aestd.math.out = #aestd aestd.math.out
