# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Loads the executing entity's position from its position scores
# For players, the player function alternative (aestd:player/set_position) should be more efficient
# Input: aestd.coords.x|aestd.coords.y|aestd.coords.z

execute store result entity @s[type=!minecraft:player] Pos[0] double 1 run scoreboard players get @s aestd.coords.x
execute store result entity @s[type=!minecraft:player] Pos[1] double 1 run scoreboard players get @s aestd.coords.y
execute store result entity @s[type=!minecraft:player] Pos[2] double 1 run scoreboard players get @s aestd.coords.z

execute if entity @s[type=minecraft:player] run function aestd:player/set_position
