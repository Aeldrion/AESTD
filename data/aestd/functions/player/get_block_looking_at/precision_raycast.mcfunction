# Written by Aeldrion, Minecraft 18w43c
# Used internally by aestd:player/get_block_looking_at/raycast

execute if block ^ ^ ^ #aestd.internal:raycast positioned ^ ^ ^0.01 run function aestd:player/get_block_looking_at/precision_raycast
execute unless block ^ ^ ^ #aestd.internal:raycast run function aestd:context/get_position
