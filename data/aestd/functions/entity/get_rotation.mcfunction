# Written by Aeldrion, Minecraft 19w05a
# Saves the sender's rotation to its rotation scores
# Input: sender, output: aestd.rot.x|aestd.rot.y

execute store result score @s aestd.rot.x run data get entity @s Rotation[0]
execute store result score @s aestd.rot.y run data get entity @s Rotation[1]
