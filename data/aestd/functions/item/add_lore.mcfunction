# Written by Aeldrion, Minecraft 19w05a
# Adds to the count an item (see aestd:item/save for slot index)
# Input: sender|aestd.item_slot|save chunk/RecordItem.tag.aestd.String

function aestd:item/save
execute unless data block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.display.Lore run data merge block 1519204 6 0 {RecordItem:{tag:{aestd:{SavedItem:{tag:{display:{Lore:[]}}}}}}}
data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.display.Lore append from block 1519204 6 0 RecordItem.tag.aestd.String
function aestd:item/load

# To specify the added lore:
# data modify block 1519204 6 0 RecordItem.tag.aestd.String set value "\"a line of lore\""
# Needs to be a valid text component (such as "\"hey\"" or "{\"text\":\"hey\"}")