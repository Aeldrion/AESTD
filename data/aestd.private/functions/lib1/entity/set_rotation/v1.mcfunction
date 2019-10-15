# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s aestd.rot.x
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s aestd.rot.y

execute if entity @s[type=minecraft:player] run function aestd1:player/set_rotation
