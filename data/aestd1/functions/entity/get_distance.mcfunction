# Author: Aeldrion
# Version: 19w42a
# Project: AESTD v1.0

# Gets the distance (x50) between the executing entity's position and the context position
# Ex. execute at @s positioned ^ ^ ^20 run function aestd1:entity/get_distance yields 1000 because 20x50=1000
# Caps at 46300 or 926 blocks away (otherwise overflows happen)
# Output: aestd.math.out

function #aestd.private:lib1/entity/get_distance