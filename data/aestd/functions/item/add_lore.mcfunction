# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Adds a line of lore to an item (see aestd:item/save for slot index and details)
# If the executing has the aestd.preformatted_text tag, text will not be formatted to JSON (see below)
# Input: aestd.item.slot|save chunk (1519204 6 0 RecordItem.tag.aestd.text)

execute unless entity @s[tag=aestd.preformatted_text] run data merge block 1519204 3 0 {Text1:'{"nbt":"RecordItem.tag.aestd.text","block":"1519204 6 0"}'}

function aestd:item/save
execute unless data block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.display.Lore run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem merge value {tag:{display:{Lore:[]}}}
execute if entity @s[tag=aestd.preformatted_text] run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.display.Lore append from block 1519204 6 0 RecordItem.tag.aestd.text
execute unless entity @s[tag=aestd.preformatted_text] run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.display.Lore append from block 1519204 3 0 Text1
function aestd:item/load

# By default, text will be converted to a JSON text component. For example, if the input is "Hello world", AESTD will convert it to '{"text":"Hello world"}'. The lore on the item will still read Hello world.
# If you want to use preformatted text (eg. '{"text":"Hello world","color":"red"}'), add the tag aestd.preformatted_text to the sender.

# EXAMPLE
# Default: data modify block 1519204 6 0 RecordItem.tag.aestd.text set value "A line of lore"
# Preformatted: data modify block 1519204 6 0 RecordItem.tag.aestd.text set value '{"text":"A preformatted line of lore"}'
