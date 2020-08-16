# TODO: see which tags convert upon zombification (such as Attributes, NoAI, NoGravity, etc)

execute if data storage aestd:data EntityData.Xp run data modify entity @s Offers set from storage aestd:data EntityData.Xp
execute if data storage aestd:data EntityData.Offers run data modify entity @s Offers set from storage aestd:data EntityData.Offers
execute if data storage aestd:data EntityData.Gossips run data modify entity @s ArmorItems set from storage aestd:data EntityData.Gossips
execute if data storage aestd:data EntityData.VillagerData run data modify entity @s VillagerData set from storage aestd:data EntityData.VillagerData

tag @s remove aestd.new