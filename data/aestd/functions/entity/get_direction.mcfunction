# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Saves the executing entity's direction multiplied by 1000 to its direction scores
# Output: aestd.dir.x|aestd.dir.y|aestd.dir.z

execute store result score @s aestd.dir.x run data get entity @s direction[0] 1000
execute store result score @s aestd.dir.y run data get entity @s direction[1] 1000
execute store result score @s aestd.dir.z run data get entity @s direction[2] 1000
