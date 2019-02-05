# Written by Aeldrion, Minecraft 18w43c
# Loads the sender's rotation from its rotation scores
# Input: aestd.rotation.x|aestd.rotation.y, output: sender

# WARNING: Does not work on players

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s aestd.rot.x
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s aestd.rot.y
