# Author: Aeldrion
# Version: 19w42a
# Project: AESTD Benchmarker

# Repeats a function until the worldborder reaches the place where it should be

scoreboard players add #aestd.benchmarker.iterations aestd.var 1
function #aestd.tools:benchmark_loop
execute store result score #aestd.benchmarker.worldborder_diameter aestd.var run worldborder get
execute if score #aestd.benchmarker.worldborder_diameter aestd.var matches 20950010.. unless score #aestd.benchmarker.iterations aestd.var > #aestd.benchmarker.function_limit aestd.var run function aestd.private:benchmark/loop_1t
