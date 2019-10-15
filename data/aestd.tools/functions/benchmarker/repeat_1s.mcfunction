# Author: Aeldrion
# Version: 19w41a
# Project: AESTD Benchmarker

# Runs a function tag as many times as possible in one second and displays the number of iterations
# Reads from the #aestd.tools:loop function tag

execute store result score #aestd.benchmarker.commandchainlength aestd.var run gamerule maxCommandChainLength
gamerule maxCommandChainLength 10500000
scoreboard players set #aestd.benchmarker.active aestd.var 1

worldborder set 30000000
function #aestd.tools:benchmark_init
schedule function aestd.private:benchmarker/start_1s 1t

schedule function aestd.private:benchmarker/check_benchmark_completed 2t
schedule function aestd.private:benchmarker/reset_commandchainlength 2t
