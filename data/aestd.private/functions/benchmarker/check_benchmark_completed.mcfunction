# Author: Aeldrion
# Version: 19w42a
# Project: AESTD Benchmarker

# Verifies if the previous benchmark was finished and displays an error message otherwise

execute if score #aestd.benchmarker.active aestd.var matches 1 run tellraw @a ["",{"text":"[AESTD Benchmarker] Benchmark failed, stopped at ","color":"dark_red"},{"score":{"name":"#aestd.benchmarker.iterations","objective":"aestd.var"},"color":"dark_red"},{"text":" iterations","color":"dark_red"}]
scoreboard players set #aestd.benchmarker.active aestd.var 0
