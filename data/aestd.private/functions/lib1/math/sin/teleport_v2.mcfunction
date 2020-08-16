execute store result entity @s Rotation[0] float 1 run scoreboard players get $in aestd.math

teleport @s ^ ^ ^1000
execute store result score $out aestd.math run data get entity @s Pos[2]
scoreboard players remove $out aestd.math 7777
