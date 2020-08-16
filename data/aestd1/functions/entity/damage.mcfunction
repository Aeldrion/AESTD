# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD v1.0

# Damages the executing entity by (damage/100) HP, does not work on players
# Input: aestd.damage

# Settings:
# - aestd.damage.hurt_by_player: if the executing mob has this tag, it will act as if it was hit by another entity with a given UUID saved in the storage (see aestd:entity/get_uuid)
# - aestd.damage.fire: if the executing mob has this tag, it will be set on fire

function #aestd.private:lib1/entity/damage