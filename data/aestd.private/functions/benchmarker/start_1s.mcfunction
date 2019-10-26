# Author: Aeldrion
# Version: 19w42a
# Project: AESTD Benchmarker

# Starts benchmark (aestd.tools:benchmarker/repeat_1s)

## NOTE: these commands are nonfunctional because of MC-135636
## I will uncomment them if/when the issue gets patched
#execute store result score #aestd.benchmarker.commands_in_tag aestd.var run function #aestd.tools:benchmark_loop
#scoreboard players set #aestd.benchmarker.function_limit aestd.var 10000000
#scoreboard players operation #aestd.benchmarker.function_limit aestd.var /= #aestd.benchmarker.commands_in_tag aestd.var
#tellraw @a ["", {"text": "[AESTD Benchmarker] This function tag is ", "color": "gray", "italic": true}, {"score": {"name": "#aestd.benchmarker.commands_in_tag", "objective": "aestd.var"}}, {"text": " commands long and the current benchmark will fail if iterations exceed ", "color": "gray", "italic": true}, {"score": {"name": "#aestd.benchmarker.function_limit", "objective": "aestd.var"}}]

worldborder set 30000000
worldborder add -10000000 1

scoreboard players set #aestd.benchmarker.iterations aestd.var 0
function aestd.private:benchmarker/loop_1s
scoreboard players set #aestd.benchmarker.active aestd.var 0
tellraw @a ["",{"text":"Function tag #aestd.tools:benchmark_loop was executed "},{"score":{"name":"#aestd.benchmarker.iterations","objective":"aestd.var"},"color":"gold"},{"text":" times"}]
