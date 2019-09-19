execute unless block ^ ^ ^ #aestd.internal:raycast positioned ^ ^ ^-0.125 run function aestd.internal:raycasting/raycast_backward_precision

execute if block ^ ^ ^ #aestd.internal:raycast run scoreboard players remove @s aestd.player.rcd 1
execute if block ^ ^ ^ #aestd.internal:raycast if score @s aestd.player.rcd matches 1.. positioned ^ ^ ^0.125 run function aestd.internal:raycasting/raycast_forward
