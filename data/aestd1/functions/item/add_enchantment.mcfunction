# Author: Aeldrion
# Version: 19w41a
# Project: AESTD v1.0

# Adds an enchantment to an item (see aestd:item/save for slot index and details)
# Input: aestd.item.slot|aestd.item.ench|aestd.item.lvl

# Enchantments use the following values for aestd.item.ench, corresponding to their protocol ID:
# 0 - Protection
# 1 - Fire Protection
# 2 - Feather Falling
# 3 - Blast Protection
# 4 - Projectile Protection
# 5 - Respiration
# 6 - Aqua Affinity
# 7 - Thorns
# 8 - Depth Strider
# 9 - Frost Walker
# 10 - Curse of Binding
# 11 - Sharpness
# 12 - Smite
# 13 - Bane of Arthropods
# 14 - Knockback
# 15 - Fire Aspect
# 16 - Looting
# 17 - Sweeping Edge
# 18 - Efficiency
# 19 - Silk Touch
# 20 - Unbreaking
# 21 - Fortune
# 22 - Power
# 23 - Punch
# 24 - Flame
# 25 - Infinity
# 26 - Luck of the Sea
# 27 - Lure
# 28 - Loyalty
# 29 - Impaling
# 30 - Riptide
# 31 - Channeling
# 32 - Multishot
# 33 - Quick Charge
# 34 - Piercing
# 35 - Mending
# 36 - Curse of Vanishing

# These values do not all correspond to the ones previously used in the ench NBT tag.

function #aestd.private:lib1/item/add_enchantment