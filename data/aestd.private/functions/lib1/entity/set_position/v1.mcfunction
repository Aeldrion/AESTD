# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

execute store result entity @s[type=!minecraft:player] Pos[0] double 1 run scoreboard players get @s aestd.pos.x
execute store result entity @s[type=!minecraft:player] Pos[1] double 1 run scoreboard players get @s aestd.pos.y
execute store result entity @s[type=!minecraft:player] Pos[2] double 1 run scoreboard players get @s aestd.pos.z

execute if entity @s[type=minecraft:player] run function aestd1:player/set_position
