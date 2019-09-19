# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Saves the executing entity's position to its position scores
# Output: aestd.pos.x|aestd.pos.y|aestd.pos.z

execute store result score @s aestd.pos.x run data get entity @s Pos[0]
execute store result score @s aestd.pos.y run data get entity @s Pos[1]
execute store result score @s aestd.pos.z run data get entity @s Pos[2]
