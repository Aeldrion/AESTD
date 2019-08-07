# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Removes enchantments from an item (see aestd:item/save for slot index and details)
# Input: aestd.item.slot|aestd.list_mode

function aestd:item/save
execute if score @s aestd.list_mode matches 0 in minecraft:overworld run data remove block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments[0]
execute if score @s aestd.list_mode matches -1 in minecraft:overworld run data remove block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments[-1]
execute unless score @s aestd.list_mode matches -1..0 in minecraft:overworld run data remove block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments
function aestd:item/load

# The sender's aestd.list_mode score changes what entries are removed
# If set to 0: remove first
# If set to -1: remove last
# Otherwise: remove all
