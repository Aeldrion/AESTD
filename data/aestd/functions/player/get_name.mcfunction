# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Saves the name of the executing player to the save chunk. This name can then be used by other functions such as aestd:entity/set_head and aestd:block/set_skull_owner
# The player whose name is currently saved has the tag aestd.name_selected
# Output: save chunk (1519204 6 0 RecordItem.tag.aestd.PlayerName)

execute in minecraft:overworld run data remove block 1519204 2 0 Items
execute in minecraft:overworld run loot insert 1519204 2 0 loot aestd.internal:drop_head
execute in minecraft:overworld run data modify block 1519204 6 0 RecordItem.tag.aestd.PlayerName set from block 1519204 2 0 Items[0].tag.SkullOwner.Name

tag @a remove aestd.name_selected
tag @s add aestd.name_selected
