# Written by Aeldrion, Minecraft 1.14
# Saves the coordinates of the player's spawnpoint to its position scores
# Input: player, output: aestd.coords.x|aestd.coords.y|aestd.coords.z

execute store result score @s aestd.coords.x run data get entity @s SpawnX
execute store result score @s aestd.coords.y run data get entity @s SpawnY
execute store result score @s aestd.coords.z run data get entity @s SpawnZ
