# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

# Checks if the save chunk is marked for force loading and setup

execute in minecraft:overworld store success score #aestd.chunk_loaded aestd.var run forceload query -30000000 7776

execute if score #aestd.chunk_loaded aestd.var matches 0 in minecraft:the_nether run forceload add -30000000 7776
execute if score #aestd.chunk_loaded aestd.var matches 0 in minecraft:overworld run forceload add -30000000 7776
execute if score #aestd.chunk_loaded aestd.var matches 0 in minecraft:the_end run forceload add -30000000 7776

execute in minecraft:the_nether run function aestd.core:save_chunk/v1_place_blocks
execute in minecraft:overworld run function aestd.core:save_chunk/v1_place_blocks
execute in minecraft:the_end run function aestd.core:save_chunk/v1_place_blocks