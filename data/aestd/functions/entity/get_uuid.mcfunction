# Written by Aeldrion, 18w50a
# Saves the UUID least/most pair of an entity to the save chunk's data item
# Input: sender, output: save chunk/aestd.EntityUUIDLeast|aestd.EntityUUIDMost

execute in minecraft:overworld run data modify block 1519204 6 0 RecordItem.tag.aestd.EntityUUIDLeast set from entity @s UUIDLeast
execute in minecraft:overworld run data modify block 1519204 6 0 RecordItem.tag.aestd.EntityUUIDMost set from entity @s UUIDMost
