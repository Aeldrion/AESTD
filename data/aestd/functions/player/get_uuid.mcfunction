# Written by Aeldrion, 18w50a
# Saves the UUID of the player to the save chunk's data item
# Input: sender, output: save chunk/aestd.PlayerUUID|aestd.PlayerUUIDLeast|aestd.PlayerUUIDMost

tag @s add aestd.player.get_name

data remove block 1519204 2 0 Items
loot insert 1519204 2 0 kill @s
data modify block 1519204 6 0 RecordItem.tag.aestd.PlayerUUID set from block 1519204 2 0 Items[0].tag.SkullOwner.Id
data modify block 1519204 6 0 RecordItem.tag.aestd.PlayerUUIDLeast set from entity @s UUIDLeast
data modify block 1519204 6 0 RecordItem.tag.aestd.PlayerUUIDMost set from entity @s UUIDMost

tag @s remove aestd.player.get_name

