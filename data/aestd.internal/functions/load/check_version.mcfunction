# Written by Aeldrion, Minecraft 1.14
# Compares the current AESTD version with the save chunk version and updates it if necessary

scoreboard players set #aestd.version aestd.var 1

execute store result score #aestd.save_chunk_version aestd.var run data get block 1519204 6 0 RecordItem.tag.aestd.VERSION
tellraw @a [{"score":{"name":"#aestd.save_chunk_version","objective":"aestd.var"}}," ",{"score":{"name":"#aestd.version","objective":"aestd.var"}}]
execute if score #aestd.save_chunk_version aestd.var < #aestd.version aestd.var run function aestd.internal:load/update_jukebox
