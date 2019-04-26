# Written by Aeldrion, Minecraft 1.14
# Loads the sender's position from its position scores
# Input: aestd.coords.x|aestd.coords.y|aestd.coords.z, output: sender

execute store result entity @s Pos[0] double 1 run scoreboard players get @s aestd.coords.x
execute store result entity @s Pos[1] double 1 run scoreboard players get @s aestd.coords.y
execute store result entity @s Pos[2] double 1 run scoreboard players get @s aestd.coords.z

execute if entity @s[type=minecraft:player] run function aestd:player/set_position
