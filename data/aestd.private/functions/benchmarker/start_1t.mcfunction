# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD Benchmarker

# Repeats and counts functions during one tick

worldborder set 30000000
worldborder add -10000000 1

scoreboard players set #aestd.benchmarker.iterations aestd.var 0
function aestd.private:benchmarker/loop_1t
data modify storage aestd:data Iterations append value 0
execute store result storage aestd:data Iterations[-1] int 1 run scoreboard players get #aestd.benchmarker.iterations aestd.var
