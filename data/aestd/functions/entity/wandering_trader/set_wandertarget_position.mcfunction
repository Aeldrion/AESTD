# Written by Aeldrion, Minecraft 1.14.2
# Sets a wandering trader's WanderTarget position from its position scores
# Input: aestd.coords.x|aestd.coords.y|aestd.coords.z

execute store result entity @s WanderTarget.X int 1 run scoreboard players get @s aestd.coords.x
execute store result entity @s WanderTarget.Y int 1 run scoreboard players get @s aestd.coords.y
execute store result entity @s WanderTarget.Z int 1 run scoreboard players get @s aestd.coords.z
