# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

replaceitem block -30000000 0 7777 container.0 minecraft:air
loot insert -30000000 0 7777 loot aestd.private:drop_head
data modify storage aestd:data UUID.String set from block -30000000 0 7777 Items[0].tag.SkullOwner.Id

tag @a[tag=aestd.player_uuid_selected, limit=1] remove aestd.player_uuid_selected
tag @s add aestd.player_uuid_selected
