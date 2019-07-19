# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Saves the UUID least/most pair of an entity to the save chunk's data item
# The entity whose UUID is currently saved has the tag aestd.uuid_selected
# Input: sender, output: save chunk/aestd.EntityUUIDLeast|aestd.EntityUUIDMost

execute in minecraft:overworld run data modify block 1519204 6 0 RecordItem.tag.aestd.EntityUUIDLeast set from entity @s UUIDLeast
execute in minecraft:overworld run data modify block 1519204 6 0 RecordItem.tag.aestd.EntityUUIDMost set from entity @s UUIDMost
tag @e[tag=aestd.uuid_selected,limit=1] remove aestd.uuid_selected
tag @s add aestd.uuid_selected
