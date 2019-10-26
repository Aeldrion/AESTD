# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

execute store result entity @s[type=!minecraft:player] Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @s[type=!minecraft:player] Pos[2] double 16 run data get entity @s Pos[2] 0.0625

execute if entity @s[type=minecraft:player] run function aestd1:player/teleport_to_chunk_corner
