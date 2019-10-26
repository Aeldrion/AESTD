# Author: Aeldrion
# Version: 19w42a
# Project: AESTD v1.0

# Saves the UUID least/most pair of the executing entity to the save chunk's data item
# The entity whose UUID was last saved has the aestd.uuid_selected tag
# This UUID can then be used in aestd:entity/anger, aestd:entity/damage and aestd:entity/projectile/set_owner_uuid
# Output: storage aestd:data UUID.Least|UUID.Most tags

# Note: the aestd:player/get_uuid function retrieves the full length string UUID, which is only used by aestd:entity/wolf/tame

function #aestd.private:lib1/entity/get_uuid