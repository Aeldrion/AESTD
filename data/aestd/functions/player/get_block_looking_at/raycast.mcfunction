# Written by Aeldrion, Minecraft 19w05a
# Used internally by aestd:player/get_block_looking_at

execute unless block ^ ^ ^ #aestd.internal:raycast positioned ^ ^ ^-0.5 run function aestd:player/get_block_looking_at/precision_raycast

execute if block ^ ^ ^ #aestd.internal:raycast run scoreboard players add #aestd aestd.rcdistance 1
execute if block ^ ^ ^ #aestd.internal:raycast if score #aestd aestd.rcdistance < @s aestd.rcdistance positioned ^ ^ ^0.5 run function aestd:player/get_block_looking_at/raycast
execute if block ^ ^ ^ #aestd.internal:raycast unless score #aestd aestd.rcdistance < @s aestd.rcdistance run function aestd:player/get_block_looking_at/fail
