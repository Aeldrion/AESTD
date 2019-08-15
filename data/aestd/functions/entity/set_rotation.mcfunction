# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Loads the executing entity's rotation from its rotation scores
# For players, the player function alternative (aestd:player/set_rotation) should be more efficient
# Input: aestd.rot.x|aestd.rot.y

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s aestd.rot.x
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s aestd.rot.y

execute if entity @s[type=minecraft:player] run function aestd:player/set_rotation
