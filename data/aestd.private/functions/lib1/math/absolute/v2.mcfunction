# Author: Aeldrion
# Version: 1.15
# Project: AESTD

execute if entity @s run scoreboard players operation #aestd aestd.math.in = @s aestd.math.in

scoreboard players set #aestd aestd.math.out 0
execute if score #aestd aestd.math.in matches ..-1 run scoreboard players operation #aestd aestd.math.out -= #aestd aestd.math.in
execute if score #aestd aestd.math.in matches 0.. run scoreboard players operation #aestd aestd.math.out += #aestd aestd.math.in

scoreboard players operation @s aestd.math.in = #aestd aestd.math.in