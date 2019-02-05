# Written by Aeldrion, Minecraft 1.13
# Loads the sender's position from its position scores
# Input: aestd.coords.x|aestd.coords.y|aestd.coords.z, output: sender

# WARNING: Does not work on players, use aestd:player/set_position instead

execute store result entity @s Pos[0] double 1 run scoreboard players get @s aestd.coords.x
execute store result entity @s Pos[1] double 1 run scoreboard players get @s aestd.coords.y
execute store result entity @s Pos[2] double 1 run scoreboard players get @s aestd.coords.z
