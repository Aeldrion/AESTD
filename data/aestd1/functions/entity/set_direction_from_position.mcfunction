# Author: Aeldrion
# Version: 19w42a
# Project: AESTD v1.0

# Sets the direction of the executing entity towards the context position
# The magnitude of the direction vector is defined by distance to context position
# Further than 40 blocks away, direction is not guaranteed to be exact due to the direction tag resetting values above 10
# WARNING: Does not work on players

function #aestd.private:lib1/entity/set_direction_from_position