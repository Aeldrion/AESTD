# Author: Aeldrion
# Version: 1.15
# Project: AESTD

execute if entity @s run scoreboard players operation #aestd aestd.math.in = @s aestd.math.in

summon minecraft:area_effect_cloud -30000000 1 7777 {Tags:["aestd", "aestd.cos.cloud"]}
execute as @e[type=minecraft:area_effect_cloud, tag=aestd.cos.cloud, limit=1] at @s run function aestd.private:lib1/math/cos/teleport_v2

scoreboard players operation @s aestd.math.out = #aestd aestd.math.out