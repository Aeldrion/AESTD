# Written by Aeldrion, Minecraft 19w05a

gamerule maxCommandChainLength 655360
scoreboard players add #aestd aestd.iterations 1
function #aestd.tools:loop
execute store result score #aestd aestd.wbdiameter run worldborder get
execute if score #aestd aestd.wbdiameter matches 20000010.. run function aestd.tools:function_test/loop
