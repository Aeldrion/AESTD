# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD v1.0

# Adds to the damage of an item (see aestd:item/save for slot index and details)
# Breaks the item if durability becomes negative.
# Negative inputs will repair the item instead of damaging it.
# Input: aestd.item.slot|aestd.item.dmg

function #aestd.private:lib1/item/add_damage