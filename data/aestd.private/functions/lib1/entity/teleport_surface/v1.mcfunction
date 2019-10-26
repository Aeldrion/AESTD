# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

teleport @s[type=!minecraft:player,tag=!aestd.teleporting_to_surface] ~ 256 ~
tag @s add aestd.teleporting_to_surface
execute at @s[type=!minecraft:player] run teleport @s ~ ~-1 ~
execute at @s[type=!minecraft:player] if block ~ ~-1 ~ #aestd.private:air run function aestd1:entity/teleport_surface
tag @s remove aestd.teleporting_to_surface

execute if entity @s[type=minecraft:player] run function aestd1:player/teleport_surface
