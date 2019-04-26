# Written by Aeldrion, Minecraft 1.14
# Loads the chunk in which the command is run for the current tick

# See if the chunk is loaded
execute store success score #aestd aestd.var if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all
# Summon entity and spreadplayers
execute if score #aestd aestd.var matches 0 at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd","aestd.context.chunk_loader"]}
execute if score #aestd aestd.var matches 0 run spreadplayers ~ ~ 0 1 false @e[type=minecraft:area_effect_cloud,tag=aestd.context.chunk_loader,limit=1]
execute if score #aestd aestd.var matches 0 run kill @e[type=minecraft:area_effect_cloud,tag=aestd.context.chunk_loader,limit=1]
