# TODO: see which tags convert upon zombification (such as Attributes, NoAI, NoGravity, etc)

execute if data storage aestd:private EntityData.Xp run data modify entity @s Offers set from storage aestd:private EntityData.Xp
execute if data storage aestd:private EntityData.Offers run data modify entity @s Offers set from storage aestd:private EntityData.Offers
execute if data storage aestd:private EntityData.Gossips run data modify entity @s ArmorItems set from storage aestd:private EntityData.Gossips
execute if data storage aestd:private EntityData.VillagerData run data modify entity @s VillagerData set from storage aestd:private EntityData.VillagerData

tag @s remove aestd.new