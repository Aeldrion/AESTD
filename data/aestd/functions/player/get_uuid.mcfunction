# Written by Aeldrion, Minecraft 1.14
# Saves the UUID of a player to the save chunk's data item
# The player whose UUID is currently saved has the tag aestd.player_uuid_selected
# Input: sender, output: save chunk/aestd.PlayerUUID

tag @s add aestd.player.get_name
execute in minecraft:overworld run data remove block 1519204 2 0 Items
execute in minecraft:overworld run loot insert 1519204 2 0 kill @s
execute in minecraft:overworld run data modify block 1519204 6 0 RecordItem.tag.aestd.PlayerUUID set from block 1519204 2 0 Items[0].tag.SkullOwner.Id
tag @s remove aestd.player.get_name

tag @a[tag=aestd.player_uuid_selected,limit=1] remove aestd.player_uuid_selected
tag @s add aestd.player_uuid_selected
