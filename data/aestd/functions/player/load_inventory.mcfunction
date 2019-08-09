# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Loads a saved inventory to the player's inventory (see aestd:player/save_inventory)

function aestd:player/load_hotbar

data modify block 1519204 6 0 RecordItem.tag.aestd_internal.Inventory set from block 1519204 6 0 RecordItem.tag.aestd.SavedInventory
data remove block 1519204 6 0 RecordItem.tag.aestd_internal.Inventory[{Slot:0b}]
data remove block 1519204 6 0 RecordItem.tag.aestd_internal.Inventory[{Slot:1b}]
data remove block 1519204 6 0 RecordItem.tag.aestd_internal.Inventory[{Slot:2b}]
data remove block 1519204 6 0 RecordItem.tag.aestd_internal.Inventory[{Slot:3b}]
data remove block 1519204 6 0 RecordItem.tag.aestd_internal.Inventory[{Slot:4b}]
data remove block 1519204 6 0 RecordItem.tag.aestd_internal.Inventory[{Slot:5b}]
data remove block 1519204 6 0 RecordItem.tag.aestd_internal.Inventory[{Slot:6b}]
data remove block 1519204 6 0 RecordItem.tag.aestd_internal.Inventory[{Slot:7b}]
data remove block 1519204 6 0 RecordItem.tag.aestd_internal.Inventory[{Slot:8b}]

data modify block 1519204 2 0 Items set from block 1519204 6 0 RecordItem.tag.aestd_internal.Inventory
