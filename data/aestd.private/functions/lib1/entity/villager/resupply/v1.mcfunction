# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

# Count trades
data remove storage aestd:private VillagerTrades.New
data modify storage aestd:private VillagerTrades.Old set from entity @s Offers.Recipes
execute store result score #aestd.offer_count aestd.var run data get storage aestd:private VillagerTrades.Old

# Cycle through every offer and reset uses
execute if score #aestd.offer_count aestd.var matches 1.. run function aestd.private:lib1/entity/villager/resupply/reset_uses_v1

# Update the villager's trades and reset storage
data modify entity @s Offers.Recipes set from storage aestd:private VillagerTrades.New
data remove storage aestd:private VillagerTrades
