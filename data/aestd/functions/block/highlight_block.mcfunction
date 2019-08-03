# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Highlights a block with end rod particles
# Input: context

execute align xyz run particle minecraft:end_rod ~0.5 ~ ~ 0.25 0 0 0 10 force
execute align xyz run particle minecraft:end_rod ~ ~ ~0.5 0 0 0.25 0 10 force
execute align xyz run particle minecraft:end_rod ~0.5 ~ ~1 0.25 0 0 0 10 force
execute align xyz run particle minecraft:end_rod ~1 ~ ~0.5 0 0 0.25 0 10 force

execute align xyz run particle minecraft:end_rod ~0.5 ~1 ~ 0.25 0 0 0 10 force
execute align xyz run particle minecraft:end_rod ~ ~1 ~0.5 0 0 0.25 0 10 force
execute align xyz run particle minecraft:end_rod ~0.5 ~1 ~1 0.25 0 0 0 10 force
execute align xyz run particle minecraft:end_rod ~1 ~1 ~0.5 0 0 0.25 0 10 force

execute align xyz run particle minecraft:end_rod ~ ~0.5 ~ 0 0.25 0 0 10 force
execute align xyz run particle minecraft:end_rod ~1 ~0.5 ~ 0 0.25 0 0 10 force
execute align xyz run particle minecraft:end_rod ~ ~0.5 ~1 0 0.25 0 0 10 force
execute align xyz run particle minecraft:end_rod ~1 ~0.5 ~1 0 0.25 0 0 10 force
