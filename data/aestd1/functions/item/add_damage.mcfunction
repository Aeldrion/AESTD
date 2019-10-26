# Author: Aeldrion
# Version: 19w42a
# Project: AESTD v1.0

# Adds to the damage of an item (see aestd:item/save for slot index and details)
# Breaks the item if durability becomes negative.
# Negative inputs will repair the item instead of damaging it.
# Input: aestd.item.slot|aestd.item.dmg

function #aestd.private:lib1/item/add_damage