# Author: Aeldrion
# Version: Hypothetical future snapshot
# Project: AESTD

# Adds a line of lore to an item (see aestd:item/save for slot index and details)
# If the executing entity has the aestd.preformatted_text tag, text will not be formatted to JSON (see below)
# Input: aestd.item.slot|storage aestd:input String tag

###### THESE COMMANDS SHOULD ONLY WORK IN A FUTURE SNAPSHOT ######
# execute unless entity @s[tag=aestd.preformatted_text] run data merge block -30000000 0 7778 {Text1:'{"nbt":"String","storage":"aestd:input"}'}

# function aestd:item/save
# execute unless data storage aestd.data Item.tag.display.Lore run data modify storage aestd.data Item merge value {tag:{display:{Lore:[]}}}
# execute if entity @s[tag=aestd.preformatted_text] run data modify storage aestd:data Item.tag.display.Lore append from storage aestd:input String
# execute unless entity @s[tag=aestd.preformatted_text] run data modify storage aestd:data Item.tag.display.Lore append from block -30000000 0 7778 Text1
# function aestd:item/load
##################################################################

# By default, text will be converted to a JSON text component. For example, if the input is "Hello world", AESTD will convert it to '{"text":"Hello world"}'. The lore on the item will still read Hello world.
# If you want to use preformatted text (eg. '{"text":"Hello world","color":"red"}'), add the tag aestd.preformatted_text to the sender.

# EXAMPLE
# Default: data modify storage aestd:input String set value "A line of lore"
# Preformatted: data modify storage aestd:input String set value '{"text":"A preformatted line of lore"}'
