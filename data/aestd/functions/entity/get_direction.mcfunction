# Written by Aeldrion, Minecraft 1.14
# Saves the sender's direction multiplied by 1000 to its direction scores
# Input: sender, output: aestd.dir.x|aestd.dir.y|aestd.dir.z

execute store result score @s aestd.dir.x run data get entity @s direction[0] 1000
execute store result score @s aestd.dir.y run data get entity @s direction[1] 1000
execute store result score @s aestd.dir.z run data get entity @s direction[2] 1000
