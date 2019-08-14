# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Saves the string UUID of the executing player to the save chunk's data item. This UUID can then be used by other functions such as aestd:entity/wolf/tame
# Not to be confused with aestd:entity/get_uuid, which saves the UUID as two tags which can be used in different situations by different functions (e.g. aestd:entity/anger and aestd:entity/projectile/set_owner_uuid)
# The player whose UUID is currently saved has the tag aestd.player_uuid_selected
# Input: sender, output: save chunk (1519204 6 0 RecordItem.tag.aestd.PlayerUUID)

execute in minecraft:overworld run data remove block 1519204 2 0 Items
execute in minecraft:overworld run loot insert 1519204 2 0 loot aestd.internal:drop_head
execute in minecraft:overworld run data modify block 1519204 6 0 RecordItem.tag.aestd.PlayerUUID set from block 1519204 2 0 Items[0].tag.SkullOwner.Id

tag @a[tag=aestd.player_uuid_selected,limit=1] remove aestd.player_uuid_selected
tag @s add aestd.player_uuid_selected
