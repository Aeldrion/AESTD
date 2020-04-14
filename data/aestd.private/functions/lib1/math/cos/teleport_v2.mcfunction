execute store result entity @s Rotation[0] float 1 run scoreboard players get #aestd aestd.math.in

teleport @s ^ ^ ^1000
execute store result score #aestd aestd.math.out run data get entity @s Pos[2]
scoreboard players remove #aestd aestd.math.out 7777
