# Author: Aeldrion
# Version: 19w42a
# Project: AESTD v1.0

# Finds the block the player is looking at, up to 64 blocks away. Looks through water and lava
# Resets scores if no block is found
# Output: aestd.pos.x|aestd.pos.y|aestd.pos.z

function #aestd.private:lib1/player/get_block_looking_at