# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Sets the executing entity's direction from its direction scores divided by 1000
# Input: aestd.dir.x|aestd.dir.y|aestd.dir.z

# WARNING: Does not work on players and entities that use Motion instead of direction

execute store result entity @s direction[0] double 0.001 run scoreboard players get @s aestd.dir.x
execute store result entity @s direction[1] double 0.001 run scoreboard players get @s aestd.dir.y
execute store result entity @s direction[2] double 0.001 run scoreboard players get @s aestd.dir.z
