# Written by Aeldrion, Minecraft 19w05a
# Sets back the worldborder to where it was and counts the tps

execute store result score #aestd aestd.wbdiameter run worldborder get
scoreboard players remove #aestd aestd.wbdiameter 30000000
scoreboard players set #aestd aestd.math.var -1
scoreboard players operation #aestd aestd.wbdiameter *= #aestd aestd.math.var

scoreboard players set #aestd aestd.math.var 40000000
scoreboard players operation #aestd aestd.math.var /= #aestd aestd.wbdiameter

# Dividing into seconds and centiseconds
scoreboard players set #100 aestd.math.var 100
scoreboard players operation #aestd aestd.math.var2 = #aestd aestd.math.var
scoreboard players operation #aestd aestd.math.var2 %= #100 aestd.math.var
scoreboard players operation #aestd aestd.math.var /= #100 aestd.math.var

execute if score #aestd aestd.math.var matches 20 run scoreboard players set #aestd aestd.math.var2 0

tellraw @a[tag=aestd.using_worldborder] ["",{"text":"TPS: ","color":"aqua","bold":true},{"score":{"name":"#aestd","objective":"aestd.math.var"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"#aestd","objective":"aestd.math.var2"},"color":"gold"}]
tag @a[tag=aestd.using_worldborder] remove aestd.using_worldborder
