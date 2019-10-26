# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

execute at @s run summon minecraft:area_effect_cloud -30000000 1 7777 {Tags:["aestd","aestd.sin.cloud"]}
execute store result entity @e[type=minecraft:area_effect_cloud,tag=aestd.sin.cloud,limit=1] Rotation[0] float 1 run scoreboard players get @s aestd.math.in
execute as @e[type=minecraft:area_effect_cloud,tag=aestd.sin.cloud,limit=1] at @s run function aestd.private:lib1/math/sin/teleport_v1
scoreboard players operation @s aestd.math.out = #aestd aestd.math.out
