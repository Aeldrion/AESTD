# Written by Aeldrion, Minecraft 19w05a
# Revokes the advancement running this function, run the #aestd:player_hurt_entity function tag and gives the damaged mob the tag aestd.damaged

tag @e[tag=aestd.damaged] remove aestd.damaged
tag @e[nbt={HurtTime:10s},limit=1,sort=nearest] add aestd.damaged

function #aestd:player_hurt_entity
advancement revoke @s only aestd.private:player_hurt_entity
