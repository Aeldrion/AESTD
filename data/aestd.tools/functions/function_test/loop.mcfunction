# Written by Aeldrion, Minecraft 19w05a

gamerule maxCommandChainLength 65536
scoreboard players set #aestd aestd.iterations 1
function #aestd.tools:loop
execute store result score #aestd aestd.wbdiameter run worldborder get
execute if score #aestd aestd.wbdiameter matches 2900000.. run function aestd.tools:function_test/loop
