# Author: Aeldrion
# Version: 19w42a
# Project: AESTD Benchmarker

# Runs a function tag as many times as possible in 50ms 20 times and displays the average number of iterations
# Reads from the #aestd.tools:loop function tag

data modify storage aestd:private Iterations set value []
gamerule maxCommandChainLength 10500000
scoreboard players set #aestd.benchmarker.active 1
worldborder set 30000000

function #aestd.tools:benchmark_init
schedule function aestd.private:benchmarker/start_1t 1t replace
schedule function aestd.private:benchmarker/start_1t 2t append
schedule function aestd.private:benchmarker/start_1t 3t append
schedule function aestd.private:benchmarker/start_1t 4t append
schedule function aestd.private:benchmarker/start_1t 5t append
schedule function aestd.private:benchmarker/start_1t 6t append
schedule function aestd.private:benchmarker/start_1t 7t append
schedule function aestd.private:benchmarker/start_1t 8t append
schedule function aestd.private:benchmarker/start_1t 9t append
schedule function aestd.private:benchmarker/start_1t 10t append
schedule function aestd.private:benchmarker/start_1t 11t append
schedule function aestd.private:benchmarker/start_1t 12t append
schedule function aestd.private:benchmarker/start_1t 13t append
schedule function aestd.private:benchmarker/start_1t 14t append
schedule function aestd.private:benchmarker/start_1t 15t append
schedule function aestd.private:benchmarker/start_1t 16t append
schedule function aestd.private:benchmarker/start_1t 17t append
schedule function aestd.private:benchmarker/start_1t 18t append
schedule function aestd.private:benchmarker/start_1t 19t append
schedule function aestd.private:benchmarker/start_1t 20t append

schedule function aestd.private:benchmarker/display_20t_result 21t
schedule function aestd.private:benchmarker/reset_commandchainlength 21t
