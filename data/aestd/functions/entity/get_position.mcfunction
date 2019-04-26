# Written by Aeldrion, Minecraft 1.14
# Saves the sender's position to its position scores
# If the sender has the aestd.coords.scale_up tag, the results will be scaled up by 50
# Input: sender, output: aestd.coords.x|aestd.coords.y|aestd.coords.z

execute store result score @s[tag=!aestd.coords.scale_up] aestd.coords.x run data get entity @s Pos[0]
execute store result score @s[tag=!aestd.coords.scale_up] aestd.coords.y run data get entity @s Pos[1]
execute store result score @s[tag=!aestd.coords.scale_up] aestd.coords.z run data get entity @s Pos[2]

execute store result score @s[tag=aestd.coords.scale_up] aestd.coords.x run data get entity @s Pos[0] 50
execute store result score @s[tag=aestd.coords.scale_up] aestd.coords.y run data get entity @s Pos[1] 50
execute store result score @s[tag=aestd.coords.scale_up] aestd.coords.z run data get entity @s Pos[2] 50
