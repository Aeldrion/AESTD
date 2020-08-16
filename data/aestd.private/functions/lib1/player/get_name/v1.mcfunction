# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD

replaceitem block -30000000 0 7777 container.0 minecraft:air
loot insert -30000000 0 7777 loot aestd.private:drop_head
data modify storage aestd:data PlayerName set from block -30000000 0 7777 Items[0].tag.SkullOwner.Name

tag @a remove aestd.name_selected
tag @s add aestd.name_selected
