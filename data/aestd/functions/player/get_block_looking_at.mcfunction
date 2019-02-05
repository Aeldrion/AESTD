# Written by Aeldrion, Minecraft 18w43c
# Finds the block the player is looking at, if no block is to find, resets scores
# Input: sender's rotation, output: aestd.coords.x|aestd.coords.y|aestd.coords.z

scoreboard players reset @s aestd.rcdistance
execute anchored eyes positioned ^ ^ ^ anchored feet run function aestd:player/get_block_looking_at/raycast
