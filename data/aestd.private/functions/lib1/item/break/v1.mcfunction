# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

execute at @s run playsound minecraft:item.shield.break player @a ~ ~ ~ 1 1.1
data modify storage aestd:data Item set value {id:"minecraft:air"}
function aestd1:item/load
