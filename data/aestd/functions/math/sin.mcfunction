# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Calculates the sine of an integer (in degrees) multiplied by 1000
# Example: 0 returns 0, 30 returns 500, 240 returns -866
# Input: aestd.math.in, output: aestd.math.out

execute at @s run summon minecraft:area_effect_cloud -30000000 1 7777 {Tags:["aestd","aestd.sin.cloud"]}
execute store result entity @e[type=minecraft:area_effect_cloud,tag=aestd.sin.cloud,limit=1] Rotation[0] float 1 run scoreboard players get @s aestd.math.in
execute as @e[type=minecraft:area_effect_cloud,tag=aestd.sin.cloud,limit=1] at @s run function aestd.private:sin_teleport
scoreboard players operation @s aestd.math.out = #aestd aestd.math.out
