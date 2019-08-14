# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Finds the block the player is looking at up to 64 blocks away. Resets scores if no block is found.
# Output: aestd.coords.x|aestd.coords.y|aestd.coords.z

scoreboard players set @s aestd.player.rcd 512
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function aestd.internal:raycasting/raycast_forward
