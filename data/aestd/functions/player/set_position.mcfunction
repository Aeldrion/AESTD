# Written by Aeldrion, Minecraft 19w05a
# Teleports the player to its position scores
# Input: aestd.coords.x|aestd.coords.y|aestd.coords.z

function aestd:world/add_marker
teleport @s @e[type=minecraft:area_effect_cloud,tag=aestd.marker,limit=1]
kill @e[type=minecraft:area_effect_cloud,tag=aestd.marker,limit=1]
