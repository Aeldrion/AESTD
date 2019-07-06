# Written by Aeldrion, Minecraft 1.14.3
# Setup save chunk. In this context, the save chunk was marked as loaded but not setup.

execute store result score #aestd.is_save_chunk_corrupted aestd.var unless block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{VERSION:1}}}}
execute unless score #aestd.is_save_chunk_corrupted aestd.var matches 1 run setblock 1519204 7 0 minecraft:quartz_block
execute unless score #aestd.is_save_chunk_corrupted aestd.var matches 1 run function aestd.core:save_chunk/update
execute if score #aestd.is_save_chunk_corrupted aestd.var matches 1 run schedule function aestd.core:message/save_chunk_reset 5s
execute if score #aestd.is_save_chunk_corrupted aestd.var matches 1 run function aestd.core:save_chunk/setup
