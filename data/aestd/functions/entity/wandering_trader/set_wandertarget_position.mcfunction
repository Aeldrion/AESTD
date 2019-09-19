# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Sets a wandering trader's WanderTarget position from its position scores
# Input: aestd.pos.x|aestd.pos.y|aestd.pos.z

execute store result entity @s WanderTarget.X int 1 run scoreboard players get @s aestd.pos.x
execute store result entity @s WanderTarget.Y int 1 run scoreboard players get @s aestd.pos.y
execute store result entity @s WanderTarget.Z int 1 run scoreboard players get @s aestd.pos.z
