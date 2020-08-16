execute at @a run playsound minecraft:entity.zombie.converted_to_drowned hostile @a ~ ~ ~

execute if predicate aestd1:flags/is_baby at @s run summon minecraft:drowned ~ ~ ~ {IsBaby: 1b, Tags: ["aestd.new"], ArmorItems: [{id: "minecraft:air"}, {id: "minecraft:air"}, {id: "minecraft:air"}, {id: "minecraft:air"}], HandItems: [{id: "minecraft:air"}, {id: "minecraft:air"}]}
execute unless predicate aestd1:flags/is_baby at @s run summon minecraft:drowned ~ ~ ~ {Tags: ["aestd.new"], ArmorItems: [{id: "minecraft:air"}, {id: "minecraft:air"}, {id: "minecraft:air"}, {id: "minecraft:air"}], HandItems: [{id: "minecraft:air"}, {id: "minecraft:air"}]}

data modify storage aestd:data EntityData set from entity @s
execute as @e[type=minecraft:drowned, tag=aestd.new, limit=1] run function aestd.private:lib1/entity/zombie/drown/copy_tags_v1
data remove storage aestd:data EntityData

teleport @s ~ -512 ~
kill @s
