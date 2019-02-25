# Written by Aeldrion, Minecraft 19w05a

gamerule maxCommandChainLength 2000000
worldborder set 30000000
worldborder add -10000000 1
scoreboard players set #aestd aestd.iterations 0
function aestd.tools:function_test/loop
tellraw @a ["",{"text":"Function tag #aestd.tools:loop was executed "},{"score":{"name":"#aestd","objective":"aestd.iterations"},"color":"gold"},{"text":" times"}]
