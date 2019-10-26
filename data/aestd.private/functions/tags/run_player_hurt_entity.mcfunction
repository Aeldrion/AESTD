# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

# Revokes the advancement running this function, run the #aestd1:player_hurt_entity function tag and gives the damaged mob the tag aestd.damaged

tag @e[tag=aestd.damaged] remove aestd.damaged
tag @e[nbt={HurtTime:10s},limit=1,sort=nearest] add aestd.damaged

function #aestd1:player_hurt_entity
advancement revoke @s only aestd.private:player_hurt_entity
