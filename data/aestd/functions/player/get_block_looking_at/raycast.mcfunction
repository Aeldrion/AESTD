# Written by Aeldrion, Minecraft 18w43c
# Used internally by aestd:player/get_block_looking_at

execute unless block ^ ^ ^ #aestd:internal/raycast positioned ^ ^ ^-0.5 run function aestd:player/get_block_looking_at/precision_raycast

execute if block ^ ^ ^ #aestd:internal/raycast run scoreboard players add @s aestd.rcdistance 1
execute if block ^ ^ ^ #aestd:internal/raycast if score @s aestd.rcdistance matches ..128 positioned ^ ^ ^0.5 run function aestd:player/get_block_looking_at/raycast
execute if block ^ ^ ^ #aestd:internal/raycast unless score @s aestd.rcdistance matches ..128 run function aestd:player/get_block_looking_at/fail
