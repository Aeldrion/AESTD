# Written by Aeldrion, Minecraft 1.14
# Setup save chunk. In this context, the save chunk was marked as loaded but not setup.

execute if score #aestd.chunk_setup aestd.var matches 0 run tellraw @a {"text":"[AESTD] Error, resetting save chunk. If you did not expect this message to display, please report this error to Aeldrion.","color":"dark_red"}
execute if score #aestd.chunk_setup aestd.var matches 0 run function aestd.core:save_chunk/setup
