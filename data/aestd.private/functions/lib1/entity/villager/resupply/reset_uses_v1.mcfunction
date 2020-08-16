# Reset uses and move first trade from old to new
data modify storage aestd:data VillagerTrades.Old[0].uses set value 0
data modify storage aestd:data VillagerTrades.New append from storage aestd:data VillagerTrades.Old[0]
data remove storage aestd:data VillagerTrades.Old[0]

# Repeat if there are still trades left in old
scoreboard players remove #aestd.offer_count aestd.var 1
execute if score #aestd.offer_count aestd.var matches 1.. run function aestd.private:lib1/entity/villager/resupply/reset_uses_v1
