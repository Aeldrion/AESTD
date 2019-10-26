# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

execute at @s run playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~

execute if predicate aestd1:flags/is_baby at @s run summon minecraft:villager ~ ~ ~ {IsBaby: 1b, Tags: ["aestd.new"]}
execute unless predicate aestd1:flags/is_baby at @s run summon minecraft:villager ~ ~ ~ {Tags: ["aestd.new"]}

data modify storage aestd:private EntityData set from entity @s
execute as @e[type=minecraft:villager, tag=aestd.new, limit=1] run function aestd.private:lib1/entity/zombie_villager/cure/copy_tags_v1
data remove storage aestd:private EntityData

teleport @s ~ -512 ~
kill @s
