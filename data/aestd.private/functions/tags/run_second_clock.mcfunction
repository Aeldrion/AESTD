# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

# Runs the #aestd1:second tag every second

function #aestd1:second
schedule function aestd.private:tags/run_second_clock 1s
