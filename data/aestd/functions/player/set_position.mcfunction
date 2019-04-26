# Written by Aeldrion, Minecraft 1.14s
# Teleports the player to its position scores
# Input: aestd.coords.x|aestd.coords.y|aestd.coords.z

function aestd:world/add_marker
execute positioned as @e[type=minecraft:area_effect_cloud,tag=aestd.marker,limit=1] run teleport @s ~ ~ ~
kill @e[type=minecraft:area_effect_cloud,tag=aestd.marker,limit=1]
