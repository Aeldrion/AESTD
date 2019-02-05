# Written by Aeldrion, Minecraft 1.13
# Loads the sender's direction from its direction scores divided by 1000
# Input: aestd.dir.x|aestd.dir.y|aestd.dir.z, output: sender

# WARNING: Does not work on players

execute store result entity @s direction[0] double 0.001 run scoreboard players get @s aestd.dir.x
execute store result entity @s direction[1] double 0.001 run scoreboard players get @s aestd.dir.y
execute store result entity @s direction[2] double 0.001 run scoreboard players get @s aestd.dir.z
