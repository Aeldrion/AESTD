# Author: Aeldrion
# Version: Hypothetical future snapshot
# Project: AESTD

execute unless entity @s[tag=aestd.preformatted_text] run data merge block -30000000 0 7778 {Text1:'{"nbt":"String","storage":"aestd:input"}'}

function aestd1:item/save
execute unless data storage aestd.data Item.tag.display.Lore run data modify storage aestd.data Item merge value {tag:{display:{Lore:[]}}}
execute if entity @s[tag=aestd.preformatted_text] run data modify storage aestd:data Item.tag.display.Lore append from storage aestd:input String
execute unless entity @s[tag=aestd.preformatted_text] run data modify storage aestd:data Item.tag.display.Lore append from block -30000000 0 7778 Text1
function aestd1:item/load
