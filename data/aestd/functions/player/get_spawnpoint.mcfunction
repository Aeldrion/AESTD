# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Saves the coordinates of the executing player's spawnpoint to its position scores
# Output: aestd.coords.x|aestd.coords.y|aestd.coords.z

execute store result score @s aestd.coords.x run data get entity @s SpawnX
execute store result score @s aestd.coords.y run data get entity @s SpawnY
execute store result score @s aestd.coords.z run data get entity @s SpawnZ
