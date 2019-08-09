# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Loads up to nine items from a saved inventory to the player's hotbar (see aestd:player/save_inventory)

data remove block 1519204 2 0 Items
data modify block 1519204 2 0 Items append from block 1519204 6 0 RecordItem.tag.aestd.SavedInventory[{Slot:0b}]
data modify block 1519204 2 0 Items append from block 1519204 6 0 RecordItem.tag.aestd.SavedInventory[{Slot:1b}]
data modify block 1519204 2 0 Items append from block 1519204 6 0 RecordItem.tag.aestd.SavedInventory[{Slot:2b}]
data modify block 1519204 2 0 Items append from block 1519204 6 0 RecordItem.tag.aestd.SavedInventory[{Slot:3b}]
data modify block 1519204 2 0 Items append from block 1519204 6 0 RecordItem.tag.aestd.SavedInventory[{Slot:4b}]
data modify block 1519204 2 0 Items append from block 1519204 6 0 RecordItem.tag.aestd.SavedInventory[{Slot:5b}]
data modify block 1519204 2 0 Items append from block 1519204 6 0 RecordItem.tag.aestd.SavedInventory[{Slot:6b}]
data modify block 1519204 2 0 Items append from block 1519204 6 0 RecordItem.tag.aestd.SavedInventory[{Slot:7b}]
data modify block 1519204 2 0 Items append from block 1519204 6 0 RecordItem.tag.aestd.SavedInventory[{Slot:8b}]
loot replace entity @s container.0 9 mine 1519204 2 0 minecraft:air{drop_contents:1b}
