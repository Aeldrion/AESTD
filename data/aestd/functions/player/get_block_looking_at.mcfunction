# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Finds the block the player is looking at, up to 64 blocks away. Looks through water and lava
# Resets scores if no block is found
# Output: aestd.pos.x|aestd.pos.y|aestd.pos.z

scoreboard players set @s aestd.player.rcd 512
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function aestd.internal:raycasting/raycast_forward
