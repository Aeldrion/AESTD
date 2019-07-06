# Written by Aeldrion, Minecraft 1.14
# Updates the save chunk's jukebox data

execute unless block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{VERSION:-1}}}} run schedule function aestd.core:message/save_chunk_update 5s

execute unless data block 1519204 6 0 RecordItem.tag.aestd run data merge block 1519204 6 0 {RecordItem:{id:"minecraft:command_block",Count:1b,tag:{aestd:{}}}}

execute unless data block 1519204 6 0 RecordItem.tag.aestd.PlayerName run data modify block 1519204 6 0 RecordItem.tag.aestd merge value {PlayerName:""}
execute unless data block 1519204 6 0 RecordItem.tag.aestd.PlayerUUID run data modify block 1519204 6 0 RecordItem.tag.aestd merge value {PlayerUUID:""}
execute unless data block 1519204 6 0 RecordItem.tag.aestd.EntityUUIDLeast run data modify block 1519204 6 0 RecordItem.tag.aestd merge value {EntityUUIDLeast:0L}
execute unless data block 1519204 6 0 RecordItem.tag.aestd.EntityUUIDMost run data modify block 1519204 6 0 RecordItem.tag.aestd merge value {EntityUUIDMost:0L}
execute unless data block 1519204 6 0 RecordItem.tag.aestd.SavedItem run data modify block 1519204 6 0 RecordItem.tag.aestd merge value {SavedItem:{}}
execute unless data block 1519204 6 0 RecordItem.tag.aestd.Items run data modify block 1519204 6 0 RecordItem.tag.aestd merge value {Items:[]}
execute unless data block 1519204 6 0 RecordItem.tag.aestd.text run data modify block 1519204 6 0 RecordItem.tag.aestd merge value {text:""}
execute unless data block 1519204 6 0 RecordItem.tag.aestd.nbt run data modify block 1519204 6 0 RecordItem.tag.aestd merge value {nbt:{}}

data modify block 1519204 6 0 RecordItem.tag.aestd merge value {VERSION:-1}
execute store result block 1519204 6 0 RecordItem.tag.aestd.VERSION int 1 run scoreboard players get #aestd.version aestd.var
