# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD v1.0

# Makes the executing entity angry at an entity with a given UUID if it can (see aestd:entity/get_uuid)
# Also includes the effects of aestd:entity/fake_damage, for technical reasons
# If the executing entity is neutral or hostile, it will become angry at the target entity.
# If the entity whose UUID was last saved in the save chunk is a player, the entity's death will count as a player kill and experience orbs will drop.
# Does not work for players (obviously).

function #aestd.private:lib1/entity/anger