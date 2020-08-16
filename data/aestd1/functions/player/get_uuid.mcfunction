# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD v1.0

# Saves the string UUID of the executing player to storage. This UUID can then be used by other functions such as aestd:entity/wolf/tame
# Not to be confused with aestd:entity/get_uuid, which saves the UUID as two tags which can be used in different situations by different functions (e.g. aestd:entity/anger and aestd:entity/projectile/set_owner_uuid)
# The player whose UUID is currently saved has the tag aestd.player_uuid_selected
# Output: storage aestd:data UUID.String tag

function #aestd.private:lib1/player/get_uuid