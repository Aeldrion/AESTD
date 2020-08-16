# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd.new"]}
execute as @e[type=minecraft:area_effect_cloud,tag=aestd.new,limit=1] run function aestd1:entity/teleport_to_chunk_corner
execute positioned as @e[type=minecraft:area_effect_cloud,tag=aestd.new,limit=1] run teleport @s ~ ~ ~
kill @e[type=minecraft:area_effect_cloud,tag=aestd.new,limit=1]
