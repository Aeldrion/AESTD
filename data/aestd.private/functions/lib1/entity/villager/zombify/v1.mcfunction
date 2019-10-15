# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

execute if predicate aestd1:flags/is_baby at @s run playsound minecraft:entity.villager.death neutral @a ~ ~ ~ 1 2
execute unless predicate aestd1:flags/is_baby at @s run playsound minecraft:entity.villager.death neutral @a ~ ~ ~
execute at @s run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~

execute if predicate aestd1:flags/is_baby at @s run summon minecraft:zombie_villager ~ ~ ~ {IsBaby: 1b, Tags: ["aestd.new"], ArmorItems: [{id: "minecraft:air"}, {id: "minecraft:air"}, {id: "minecraft:air"}, {id: "minecraft:air"}], HandItems: [{id: "minecraft:air"}, {id: "minecraft:air"}]}
execute unless predicate aestd1:flags/is_baby at @s run summon minecraft:zombie_villager ~ ~ ~ {Tags: ["aestd.new"], ArmorItems: [{id: "minecraft:air"}, {id: "minecraft:air"}, {id: "minecraft:air"}, {id: "minecraft:air"}], HandItems: [{id: "minecraft:air"}, {id: "minecraft:air"}]}

data modify storage aestd:private EntityData set from entity @s
execute as @e[type=minecraft:zombie_villager, tag=aestd.new, limit=1] run function aestd.private:lib1/entity/villager/zombify/copy_tags_v1
data remove storage aestd:private EntityData

teleport @s ~ -512 ~
kill @s
