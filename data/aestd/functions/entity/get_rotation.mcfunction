# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Saves the executing entity's rotation to its rotation scores
# Output: aestd.rot.x|aestd.rot.y

execute store result score @s aestd.rot.x run data get entity @s Rotation[0]
execute store result score @s aestd.rot.y run data get entity @s Rotation[1]
