# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

# Updates AESTD's version, its storage system version, its scoreboard version, its save chunk format version, its function library version and its tick function version

scoreboard players set #aestd.this_version aestd.version 2
scoreboard players set #aestd.this_storage_version aestd.version 2
scoreboard players set #aestd.this_scoreboard_version aestd.version 2
scoreboard players set #aestd.this_save_chunk_version aestd.version 1
scoreboard players set #aestd.this_function_lib_version aestd.version 1
scoreboard players set #aestd.this_tick_function_version aestd.version 1

execute unless score #aestd.version aestd.version > #aestd.this_version aestd.version run scoreboard players operation #aestd.version aestd.version = #aestd.this_version aestd.version
execute unless score #aestd.storage_version aestd.version > #aestd.this_storage_version aestd.version run scoreboard players operation #aestd.storage_version aestd.version = #aestd.this_storage_version aestd.version
execute unless score #aestd.scoreboard_version aestd.version > #aestd.this_scoreboard_version aestd.version run scoreboard players operation #aestd.scoreboard_version aestd.version = #aestd.this_scoreboard_version aestd.version
execute unless score #aestd.save_chunk_version aestd.version > #aestd.this_save_chunk_version aestd.version run scoreboard players operation #aestd.save_chunk_version aestd.version = #aestd.this_save_chunk_version aestd.version
execute unless score #aestd.function_lib_version aestd.version > #aestd.this_function_lib_version aestd.version run scoreboard players operation #aestd.function_lib_version aestd.version = #aestd.this_function_lib_version aestd.version
execute unless score #aestd.tick_function_version aestd.version > #aestd.this_tick_function_version aestd.version run scoreboard players operation #aestd.tick_function_version aestd.version = #aestd.this_tick_function_version aestd.version
