# Written by Aeldrion, Minecraft 1.14
# Offsets an entity's position by its position delta scores
# Input: sender|aestd.delta.x|aestd.delta.y|aestd.delta.z, output: sender

function aestd:entity/get_position
scoreboard players operation @s aestd.coords.x += @s aestd.delta.x
scoreboard players operation @s aestd.coords.y += @s aestd.delta.y
scoreboard players operation @s aestd.coords.z += @s aestd.delta.z
function aestd:entity/set_position
