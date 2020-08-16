# See if the chunk is loaded
execute store success score #is_chunk_loaded aestd if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all

execute if score #is_chunk_loaded aestd matches 0 run forceload add ~ ~
execute if score #is_chunk_loaded aestd matches 0 run forceload remove ~ ~
