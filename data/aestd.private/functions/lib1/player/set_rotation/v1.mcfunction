# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd.marker"]}
execute store result entity @e[type=minecraft:area_effect_cloud,tag=aestd.marker,limit=1] Rotation[0] float 1 run scoreboard players get @s aestd.rot.x
execute store result entity @e[type=minecraft:area_effect_cloud,tag=aestd.marker,limit=1] Rotation[1] float 1 run scoreboard players get @s aestd.rot.y

execute at @e[type=minecraft:area_effect_cloud,tag=aestd.marker,limit=1] run teleport @s ~ ~ ~ ~ ~
kill @e[type=minecraft:area_effect_cloud,tag=aestd.marker,limit=1]
