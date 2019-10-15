execute unless block ^ ^ ^ #aestd.private:raycast positioned ^ ^ ^-0.125 run function aestd.private:lib1/player/get_block_looking_at/raycast_backward_precision

execute if block ^ ^ ^ #aestd.private:raycast run scoreboard players remove @s aestd.player.rcd 1
execute if block ^ ^ ^ #aestd.private:raycast if score @s aestd.player.rcd matches 1.. positioned ^ ^ ^0.125 run function aestd.private:lib1/player/get_block_looking_at/raycast_forward
