# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Loads the chunk in which the command is run for the current tick

# See if the chunk is loaded
execute store success score #aestd aestd.var if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all

# Summon entity and spreadplayers
execute if score #aestd aestd.var matches 0 run forceload add ~ ~
execute if score #aestd aestd.var matches 0 run forceload remove ~ ~
