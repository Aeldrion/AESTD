# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Teleports an entity to the minimum x and z coordinates in the chunk it is in

execute store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625

execute if entity @s[type=minecraft:player] run function aestd:player/teleport_to_chunk_corner
