# Written by Aeldrion, Minecraft 19w05a
# Saves the sender's position to its position scores
# Input: sender, output: aestd.coords.x|aestd.coords.y|aestd.coords.z

execute store result score @s aestd.coords.x run data get entity @s Pos[0]
execute store result score @s aestd.coords.y run data get entity @s Pos[1]
execute store result score @s aestd.coords.z run data get entity @s Pos[2]
