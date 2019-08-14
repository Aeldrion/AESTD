# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Teleports the executing entity to the highest block matching the x and z coordinates of the context position
# For players, the player function alternative (aestd:player/teleport_surface) should be more efficient

teleport @s[type=!minecraft:player,tag=!aestd.teleporting_to_surface] ~ 256 ~
tag @s add aestd.teleporting_to_surface
execute at @s[type=!minecraft:player] run teleport @s ~ ~-1 ~
execute at @s[type=!minecraft:player] if block ~ ~-1 ~ #aestd:air run function aestd:entity/teleport_surface
tag @s remove aestd.teleporting_to_surface

execute if entity @s[type=minecraft:player] run function aestd:player/teleport_surface
