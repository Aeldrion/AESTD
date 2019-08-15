# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Simulates the breaking of an item (see aestd:item/save for slot index and details)
# Input: aestd.item.slot

execute at @s run playsound minecraft:item.shield.break player @a ~ ~ ~ 1 1.1
data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem set value {id:"minecraft:air"}
function aestd:item/load
