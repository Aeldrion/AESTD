# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Loads the executing entity's position from its position scores
# For players, the player function alternative (aestd:player/set_position) should be more efficient
# Input: aestd.pos.x|aestd.pos.y|aestd.pos.z

execute store result entity @s[type=!minecraft:player] Pos[0] double 1 run scoreboard players get @s aestd.pos.x
execute store result entity @s[type=!minecraft:player] Pos[1] double 1 run scoreboard players get @s aestd.pos.y
execute store result entity @s[type=!minecraft:player] Pos[2] double 1 run scoreboard players get @s aestd.pos.z

execute if entity @s[type=minecraft:player] run function aestd:player/set_position
