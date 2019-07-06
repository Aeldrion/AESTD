# Written by Aeldrion, Minecraft 1.14.3
# Checks if the save chunk is marked for force loading and setup

execute in minecraft:overworld store success score #aestd.chunk_loaded aestd.var run forceload query 1519204 0

execute if score #aestd.chunk_loaded aestd.var matches 0 in minecraft:overworld run forceload add 1519204 0
execute if score #aestd.chunk_loaded aestd.var matches 0 in minecraft:overworld if block 1519204 7 0 minecraft:quartz_block run function aestd.core:save_chunk/check_version
execute if score #aestd.chunk_loaded aestd.var matches 0 in minecraft:overworld unless block 1519204 7 0 minecraft:quartz_block run function aestd.core:save_chunk/setup

execute if score #aestd.chunk_loaded aestd.var matches 1 in minecraft:overworld if block 1519204 7 0 minecraft:quartz_block run function aestd.core:save_chunk/check_version
execute if score #aestd.chunk_loaded aestd.var matches 1 in minecraft:overworld unless block 1519204 7 0 minecraft:quartz_block run function aestd.core:save_chunk/repair
