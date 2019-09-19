# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Checks if the save chunk is marked for force loading and setup

execute in minecraft:overworld store success score #aestd.chunk_loaded aestd.var run forceload query -30000000 8880

execute if score #aestd.chunk_loaded aestd.var matches 0 in minecraft:the_nether run forceload add -30000000 8880
execute if score #aestd.chunk_loaded aestd.var matches 0 in minecraft:overworld run forceload add -30000000 8880
execute if score #aestd.chunk_loaded aestd.var matches 0 in minecraft:the_end run forceload add -30000000 8880

execute in minecraft:the_nether run function aestd.core:load/place_save_chunk_blocks
execute in minecraft:overworld run function aestd.core:load/place_save_chunk_blocks
execute in minecraft:the_end run function aestd.core:load/place_save_chunk_blocks
