# Written by Aeldrion, Minecraft 1.14
# Teleports the sender to the highest block matching the x and z coordinates of the context position

teleport @s[tag=!aestd.teleporting_to_surface] ~ 256 ~
tag @s add aestd.teleporting_to_surface
execute at @s run teleport @s ~ ~-1 ~
execute at @s if block ~ ~-1 ~ #aestd:air run function aestd:entity/teleport_surface
tag @s remove aestd.teleporting_to_surface
