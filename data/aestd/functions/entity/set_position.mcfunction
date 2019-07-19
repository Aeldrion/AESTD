# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Loads the sender's position from its position scores
# If the sender has the aestd.coords.scale_up tag, the position will be scaled down by 50(as the get_position function uses scale_up to scale up the score)
# Input: aestd.coords.x|aestd.coords.y|aestd.coords.z, output: sender

execute store result entity @s[tag=!aestd.coords.scale_up] Pos[0] double 1 run scoreboard players get @s aestd.coords.x
execute store result entity @s[tag=!aestd.coords.scale_up] Pos[1] double 1 run scoreboard players get @s aestd.coords.y
execute store result entity @s[tag=!aestd.coords.scale_up] Pos[2] double 1 run scoreboard players get @s aestd.coords.z

execute store result entity @s[tag=aestd.coords.scale_up] Pos[0] double 0.02 run scoreboard players get @s aestd.coords.x
execute store result entity @s[tag=aestd.coords.scale_up] Pos[1] double 0.02 run scoreboard players get @s aestd.coords.y
execute store result entity @s[tag=aestd.coords.scale_up] Pos[2] double 0.02 run scoreboard players get @s aestd.coords.z

execute if entity @s[type=minecraft:player] run function aestd:player/set_position
