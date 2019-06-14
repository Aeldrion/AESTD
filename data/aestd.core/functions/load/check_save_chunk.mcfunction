# Written by Aeldrion, Minecraft 1.14
# Checks if the save chunk is marked for force loading and setup

# See if the save chunk is loaded
execute in minecraft:overworld store success score #aestd.chunk_loaded aestd.var run forceload query 1519204 0

# Exhibit A: the chunk isn't marked for force loading
execute if score #aestd.chunk_loaded aestd.var matches 0 run function aestd.core:save_chunk/ask_forceload

# Exhibit B: the chunk is marked for force loading; set it up if it wasn't and see if it is up to date
execute if score #aestd.chunk_loaded aestd.var matches 1 unless score #aestd.chunk_setup aestd.var matches 1 in minecraft:overworld run function aestd.core:save_chunk/setup
execute if score #aestd.chunk_loaded aestd.var matches 1 if score #aestd.chunk_setup aestd.var matches 1 in minecraft:overworld run function aestd.core:save_chunk/check_version
