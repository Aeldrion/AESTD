# Written by Aeldrion, 18w50a
# Saves the UUID of a player to the save chunk's data item
# Input: sender, output: save chunk/aestd.PlayerUUID

tag @s add aestd.player.get_name

data remove block 1519204 2 0 Items
loot insert 1519204 2 0 kill @s
data modify block 1519204 6 0 RecordItem.tag.aestd.PlayerUUID set from block 1519204 2 0 Items[0].tag.SkullOwner.Id

tag @s remove aestd.player.get_name
