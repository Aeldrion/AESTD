teleport @s ~ ~ ~
execute store result score #aestd aestd.coords.x run data get entity @s Pos[0]
execute store result score #aestd aestd.coords.y run data get entity @s Pos[1]
execute store result score #aestd aestd.coords.z run data get entity @s Pos[2]
kill @s
