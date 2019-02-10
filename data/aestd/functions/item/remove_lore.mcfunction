# Written by Aeldrion, Minecraft 19w05a
# Removes lines of lore from an item (see aestd:item/save for slot index)
# Input: sender|aestd.item_slot|aestd.list_mode

function aestd:item/save
execute if score @s aestd.list_mode matches 0 run data remove block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.display.Lore[0]
execute if score @s aestd.list_mode matches -1 run data remove block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.display.Lore[-1]
execute unless score @s aestd.list_mode matches 0 unless score @s aestd.list_mode matches -1 run data remove block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.display.Lore
function aestd:item/load

# The sender's aestd.list_mode score changes what entries are removed
# If set to 0: remove first
# If set to -1: remove last
# Otherwise: remove all
