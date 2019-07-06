# Written by Aeldrion, Minecraft 1.14.3
# Compares the current AESTD version with the save chunk version and updates it if necessary

# Get save chunk version and update if the save chunk isn't up to date
execute store result score #aestd.save_chunk_version aestd.var run data get block 1519204 6 0 RecordItem.tag.aestd.VERSION
execute if score #aestd.save_chunk_version aestd.var < #aestd.version aestd.var run function aestd.core:save_chunk/update

# If the save chunk isn't built, fix it
scoreboard players set #aestd.chunk_setup aestd.var 0
execute unless block 1519204 2 0 minecraft:orange_shulker_box run scoreboard players set #aestd.chunk_setup aestd.var 0
execute unless block 1519204 6 0 minecraft:jukebox run scoreboard players set #aestd.chunk_setup aestd.var 0
execute if score #aestd.chunk_setup aestd.var matches 0 run function aestd.core:save_chunk/recover
