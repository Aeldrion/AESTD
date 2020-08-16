# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD v1.0

# Loads an item to the executing entity's inventory (see details below and aestd:item/save)
# Used internally along with aestd:item/save by most item functions
# Input: storage aestd:data Item tag|aestd.item.slot

# If the executing entity has the aestd.item.container tag, the item will be loaded in a container's slot at context position. aestd.item.slot corresponds to the item's Slot tag (eg. 4 for the middle of a dropper)
# Else, if the executing entity is an item entity, its data will be changed directly from storage
# Else, if the executing is a player, its aestd.item.slot score determines in what slot the item will be loaded:
#	-1 mainhand
#	-2 offhand
#	0-9 hotbar
#	10-35 inventory
#	100-101-102-103 armor (feet to head)
# Else, if the executing entity is a mob, its aestd.item.slot score determines in what slot the item will be loaded:
#	-1 mainhand
#	-2 offhand
#	100-101-102-103 armor (feet to head)
# If there is no executing entity, an item entity will be spawned at context position

function #aestd.private:lib1/item/load