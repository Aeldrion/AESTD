# Written by Aeldrion, 18w45a
# Teleports an entity to the minimum x and z coordinates in the chunk it is in
# Input: sender, output: sender

# WARNING: Does not work on players

execute store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625
