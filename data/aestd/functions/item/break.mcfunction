# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Simulates the breaking of an item (see aestd:item/save for slot index and details)
# Input: aestd.item.slot

execute at @s run playsound minecraft:item.shield.break player @a ~ ~ ~ 1 1.1
data modify storage aestd:data Item set value {id:"minecraft:air"}
function aestd:item/load
