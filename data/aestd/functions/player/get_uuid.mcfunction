# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Saves the string UUID of the executing player to storage. This UUID can then be used by other functions such as aestd:entity/wolf/tame
# Not to be confused with aestd:entity/get_uuid, which saves the UUID as two tags which can be used in different situations by different functions (e.g. aestd:entity/anger and aestd:entity/projectile/set_owner_uuid)
# The player whose UUID is currently saved has the tag aestd.player_uuid_selected
# Output: storage aestd:data UUID.String tag

replaceitem block -30000000 0 7777 container.0 minecraft:air
loot insert -30000000 0 7777 loot aestd.private:drop_head
data modify storage aestd:data UUID.String set from block -30000000 0 7777 Items[0].tag.SkullOwner.Id

tag @a[tag=aestd.player_uuid_selected, limit=1] remove aestd.player_uuid_selected
tag @s add aestd.player_uuid_selected
