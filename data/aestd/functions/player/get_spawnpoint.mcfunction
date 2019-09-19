# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Saves the coordinates of the executing player's spawnpoint to its position scores
# Output: aestd.pos.x|aestd.pos.y|aestd.pos.z

execute store result score @s aestd.pos.x run data get entity @s SpawnX
execute store result score @s aestd.pos.y run data get entity @s SpawnY
execute store result score @s aestd.pos.z run data get entity @s SpawnZ
