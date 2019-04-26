# Written by Aeldrion, Minecraft 1.14
# Saves the name of the player to the save chunk's data item
# The player whose name is currently saved has the tag aestd.name_selected
# Input: sender, output: save chunk/aestd.PlayerName

tag @s add aestd.player.get_name
data remove block 1519204 2 0 Items
loot insert 1519204 2 0 kill @s
data modify block 1519204 6 0 RecordItem.tag.aestd.PlayerName set from block 1519204 2 0 Items[0].tag.SkullOwner.Name
tag @s remove aestd.player.get_name

tag @a[tag=aestd.name_selected,limit=1] remove aestd.name_selected
tag @s add aestd.name_selected
