# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD

# Count trades
data remove storage aestd:data VillagerTrades.New
data modify storage aestd:data VillagerTrades.Old set from entity @s Offers.Recipes
execute store result score #aestd.offer_count aestd.var run data get storage aestd:data VillagerTrades.Old

# Cycle through every offer and reset uses
execute if score #aestd.offer_count aestd.var matches 1.. run function aestd.private:lib1/entity/villager/resupply/reset_uses_v1

# Update the villager's trades and reset storage
data modify entity @s Offers.Recipes set from storage aestd:data VillagerTrades.New
data remove storage aestd:data VillagerTrades
