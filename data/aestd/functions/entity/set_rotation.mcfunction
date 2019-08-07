# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Loads the executing entity's rotation from its rotation scores
# Input: aestd.rotation.x|aestd.rotation.y

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s aestd.rot.x
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s aestd.rot.y

execute if entity @s[type=minecraft:player] run function aestd:player/set_rotation
