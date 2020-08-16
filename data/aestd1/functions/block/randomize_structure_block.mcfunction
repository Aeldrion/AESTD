# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD v1.0

# Randomly modifies the mirror/rotation settings of a load structure block
# If the executing entity has the aestd.block.adjust_structure_pos tag, the structure loading position will be adjusted symmetrically to the structure block (only works if its mirror/rotation settings are set to default when calling the function).
# For instance, with the tag, if the structure block is in the middle of the bounding box and posX and posZ are set, the structure block would still be in the middle of the bounding box after the operation.

function #aestd.private:lib1/block/randomize_structure_block