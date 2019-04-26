# Written by Aeldrion, Minecraft 19w05a
# Runs the #aestd:second tag every second

function #aestd:second
schedule function aestd.internal:tags/run_second_clock 1s
