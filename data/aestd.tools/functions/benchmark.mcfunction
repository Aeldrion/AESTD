# Written by Aeldrion, Minecraft 1.14.4
# Counts the iterations of a function or a list of functions on a ten second timespan.
# Reads from the #aestd.tools:loop function tag

worldborder set 30000000
function #aestd.tools:benchmark_init
schedule function aestd.private:benchmark/start 1t
