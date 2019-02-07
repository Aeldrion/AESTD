# Written by Aeldrion, 19w05a
# Saves the name of the player to the save chunk's data item
# Input: sender, output: save chunk/aestd.PlayerName

tag @s add aestd.player.get_name

data remove block 1519204 2 0 Items
loot insert 1519204 2 0 kill @s
data modify block 1519204 6 0 RecordItem.tag.aestd.PlayerName set from block 1519204 2 0 Items[0].tag.SkullOwner.Name

tag @s remove aestd.player.get_name
