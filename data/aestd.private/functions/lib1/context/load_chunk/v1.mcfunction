# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

# See if the chunk is loaded
execute store success score #aestd.is_chunk_loaded aestd.var if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all

execute if score #aestd.is_chunk_loaded aestd.var matches 0 run forceload add ~ ~
execute if score #aestd.is_chunk_loaded aestd.var matches 0 run forceload remove ~ ~
