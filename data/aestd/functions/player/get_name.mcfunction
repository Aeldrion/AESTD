# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Saves the name of the executing player to storage. This name can then be used by other functions such as aestd:entity/set_head and aestd:block/set_skull_owner
# The player whose name is currently saved has the tag aestd.name_selected
# Output: storage aestd:data PlayerName tag

replaceitem block -30000000 0 7777 container.0 minecraft:air
loot insert -30000000 0 7777 loot aestd.internal:drop_head
data modify storage aestd:data PlayerName set from block -30000000 0 7777 Items[0].tag.SkullOwner.Name

tag @a remove aestd.name_selected
tag @s add aestd.name_selected
