# Written by Aeldrion, Minecraft 1.14
# Simulates the breaking of an item

execute at @s run playsound minecraft:item.shield.break player @a ~ ~ ~ 1 1.1
data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem set value {id:"minecraft:air"}
function aestd:item/load
