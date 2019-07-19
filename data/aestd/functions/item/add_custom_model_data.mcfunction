# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Adds to the custom model data field of an item (see aestd:item/save for slot index)
# Input: sender|aestd.item.slot|aestd.item.cmd

function aestd:item/save
execute in minecraft:overworld store result score #aestd aestd.item.cmd run data get block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.CustomModelData
execute in minecraft:overworld store result block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.CustomModelData int 1 run scoreboard players operation #aestd aestd.item.cmd += @s aestd.item.cmd
function aestd:item/load
