# Written by Aeldrion, Minecraft 19w05a

scoreboard players add #aestd aestd.iterations 1
function #aestd.tools:loop
execute store result score aestd aestd.wbdiameter run worldborder get
execute if score aestd aestd.wbdiameter matches 20000010.. run function aestd.internal:benchmark/loop