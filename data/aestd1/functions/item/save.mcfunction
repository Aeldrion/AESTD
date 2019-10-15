# Author: Aeldrion
# Version: 19w41a
# Project: AESTD v1.0

# Saves an item to the storage (see aestd:item/load)
# Used internally along with aestd:item/load by most item functions
# Input: aestd.item.slot, output: storage aestd:data Item tag

# If the executing entity has the aestd.item.container tag, the item will be saved from a container's slot at context position. aestd.item.slot corresponds to the item's Slot tag (eg. 4 for the middle of a dropper)
# Else, if the executing entity is an item entity, its data will be saved directly to storage
# Else, if the executing is a player, its aestd.item.slot score determines from what slot the item will be saved:
#	-1 mainhand
#	-2 offhand
#	0-9 hotbar
#	10-35 inventory
#	100-101-102-103 armor (feet to head)
# Else, if the executing entity is a mob, its aestd.item.slot score determines from what slot the item will be saved:
#	-1 mainhand
#	-2 offhand
#	100-101-102-103 armor (feet to head)
# If there is no executing entity, nothing will happen


function #aestd.private:lib1/item/save