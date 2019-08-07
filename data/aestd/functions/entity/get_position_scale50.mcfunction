# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Saves the executing entity's position (x50) to its position scores
# Output: aestd.coords.x|aestd.coords.y|aestd.coords.z

execute store result score @s aestd.coords.x run data get entity @s Pos[0] 50
execute store result score @s aestd.coords.y run data get entity @s Pos[1] 50
execute store result score @s aestd.coords.z run data get entity @s Pos[2] 50
