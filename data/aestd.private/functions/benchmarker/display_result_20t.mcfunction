# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD Benchmarker

tellraw @a {"text": "Executed function tag #aestd.tools:benchmark_loop for 20 ticks"}

scoreboard players set #aestd.benchmarker.iterations aestd.var 0

execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[0]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[1]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[2]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[3]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[4]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[5]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[6]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[7]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[8]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[9]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[10]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[11]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[12]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[13]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[14]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[15]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[16]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[17]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[18]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var
execute store result score #aestd.benchmarker.iter.term aestd.var run data get storage aestd:data Iterations[19]
scoreboard players operation #aestd.benchmarker.iterations aestd.var += #aestd.benchmarker.iter.term aestd.var

scoreboard players operation #aestd.benchmarker.average aestd.var = #aestd.benchmarker.iterations aestd.var
scoreboard players operation #aestd.benchmarker.average aestd.var /= $20 aestd.math.const

tellraw @a [{"text": "Average iterations per tick: "}, {"score": {"name": "#aestd.benchmarker.average", "objective": "aestd.var"}}]
tellraw @a [{"text": "Total iterations: "}, {"score": {"name": "#aestd.benchmarker.iterations", "objective": "aestd.var"}}]
