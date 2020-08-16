# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD v1.0

# Adds a line of lore to an item (see aestd:item/save for slot index and details)
# If the executing entity has the aestd.preformatted_text tag, text will not be formatted to JSON (see below)
# Input: aestd.item.slot|storage aestd:input String tag

# By default, text will be converted to a JSON text component. For example, if the input is "Hello world", AESTD will convert it to '{"text":"Hello world"}'. The lore on the item will still read Hello world.
# If you want to use preformatted text (eg. '{"text":"Hello world","color":"red"}'), add the tag aestd.preformatted_text to the sender.

# EXAMPLE
# Default: data modify storage aestd:input String set value "A line of lore"
# Preformatted: data modify storage aestd:input String set value '{"text":"A preformatted line of lore"}'

function #aestd.private:lib1/item/add_lore